import React, { useCallback, useEffect, useMemo, useState } from 'react';
import axios from 'axios';
import { AlertTriangle, Loader2, RefreshCcw } from 'lucide-react';
import CodingWorkspace from './CodingWorkspace';

const MODE_COPY = {
  exercise: {
    quickActions: [
      { label: 'อธิบายโจทย์ข้อนี้', prompt: 'ช่วยอธิบายโจทย์ข้อนี้แบบเข้าใจง่ายหน่อย' },
      { label: 'ช่วยดูบั๊กให้หน่อย', prompt: 'ช่วยหาให้หน่อยว่าโค้ดฉันผิดตรงไหน ขอโค้ดที่ถูกต้องหน่อย' },
      { label: 'ให้ hint สั้น ๆ', prompt: 'ช่วยให้ hint สั้น ๆ สำหรับการแก้โจทย์นี้หน่อย' },
    ],
    progressLabel: 'Debug Reward',
  },
  challenge: {
    quickActions: [
      { label: 'ขอ hint สั้น ๆ', prompt: 'ช่วยให้ hint สั้น ๆ สำหรับโจทย์ข้อนี้หน่อย' },
      { label: 'ช่วยดูแนวทางโค้ด', prompt: 'ช่วยดูแนวทางจากโค้ดตอนนี้หน่อยว่าควรแก้ตรงไหนบ้าง' },
      { label: 'Where is the bug in my code?', prompt: 'หาให้หน่อยว่าโค้ดฉันผิดตรงไหน ขอโค้ดที่ถูกต้องหน่อย' },
    ],
    progressLabel: 'Challenge Reward',
  },
};

export default function AiTaskPage({ mode = 'exercise', user, onUserRefresh }) {
  const [task, setTask] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [rerolling, setRerolling] = useState(false);

  const userId = user?.user_id;
  const modeCopy = MODE_COPY[mode] || MODE_COPY.exercise;

  const fetchTask = useCallback(async () => {
    if (!userId) return;
    try {
      setLoading(true);
      setError('');
      const response = await axios.get('http://localhost:3001/api/learning/ai-task', {
        params: { userId, mode },
      });
      setTask(response.data.task);
    } catch (err) {
      setError(err?.response?.data?.error || 'ไม่สามารถโหลดโจทย์จาก AI ได้');
    } finally {
      setLoading(false);
    }
  }, [mode, userId]);

  useEffect(() => {
    fetchTask();
  }, [fetchTask]);

  const handleReroll = useCallback(async () => {
    if (!userId || !task || rerolling) return;
    try {
      setRerolling(true);
      setError('');
      const response = await axios.post('http://localhost:3001/api/learning/ai-task/reroll', {
        userId,
        mode,
      });
      setTask(response.data.task);
    } catch (err) {
      setError(err?.response?.data?.error || 'ไม่สามารถสุ่มโจทย์ใหม่ได้');
    } finally {
      setRerolling(false);
    }
  }, [mode, rerolling, task, userId]);

  const handleSubmitTask = useCallback(async ({ taskId }) => {
    const response = await axios.post('http://localhost:3001/api/learning/ai-task/submit', {
      userId,
      taskId,
      mode,
      passed: true,
    });

    if (response.data?.user) {
      localStorage.setItem('user', JSON.stringify(response.data.user));
      onUserRefresh?.(response.data.user);
    }

    await fetchTask();
    return response.data;
  }, [fetchTask, mode, onUserRefresh, userId]);

  const progressMeta = useMemo(() => {
    if (!task) return '';
    return `+${task.rewardXp} XP • +${task.rewardCoins} Coins • รีโจทย์ได้อีก ${task.rerollsRemaining} ครั้ง`;
  }, [task]);

  if (loading) {
    return (
      <div className="flex h-full items-center justify-center rounded-[24px] border border-slate-200 bg-white/80 p-10 shadow-sm">
        <div className="flex items-center gap-3 text-slate-600">
          <Loader2 size={20} className="animate-spin" />
          <span className="text-sm font-semibold">กำลังเตรียมโจทย์จาก AI...</span>
        </div>
      </div>
    );
  }

  if (error && !task) {
    return (
      <div className="flex h-full items-center justify-center rounded-[24px] border border-red-200 bg-white/80 p-10 shadow-sm">
        <div className="max-w-md space-y-4 text-center">
          <div className="mx-auto flex h-14 w-14 items-center justify-center rounded-full bg-red-50 text-red-500">
            <AlertTriangle size={24} />
          </div>
          <div>
            <h2 className="text-lg font-bold text-slate-900">โหลดโจทย์ไม่สำเร็จ</h2>
            <p className="mt-2 text-sm text-slate-600">{error}</p>
          </div>
          <button
            type="button"
            onClick={fetchTask}
            className="inline-flex items-center gap-2 rounded-2xl bg-slate-900 px-4 py-2.5 text-sm font-bold text-white"
          >
            ลองใหม่อีกครั้ง
          </button>
        </div>
      </div>
    );
  }

  if (!task) return null;

  return (
    <CodingWorkspace
      user={user}
      taskId={task.taskId}
      sectionLabel={task.sectionLabel}
      title={task.title}
      accent={task.accent}
      subtitle={task.subtitle}
      instructions={task.instructions}
      example={task.example}
      initialCode={task.starterCode}
      starterMessage={mode === 'challenge'
        ? 'สวัสดี เราคือ Lumi ผู้ช่วยประจำด่าน Challenge นี้ ถ้าคุณอยากได้ hint หรืออยากให้ช่วยมองบั๊กจากโค้ดที่เขียนอยู่ก็เรียกเราได้เลย ✨'
        : 'สวัสดี เราคือ Lumi ผู้ช่วยของห้อง Debug Lab นี้เอง ถ้าติดบั๊กหรืออยากได้ hint ก็ถามเราได้เลย ✨'}
      testCases={task.testCases}
      submitLabel={mode === 'challenge' ? 'Submit challenge' : 'Submit answer'}
      progressLabel={modeCopy.progressLabel}
      progressMeta={progressMeta}
      quickActions={modeCopy.quickActions}
      rewardXp={task.rewardXp}
      rewardCoins={task.rewardCoins}
      rerollsRemaining={task.rerollsRemaining}
      onReroll={handleReroll}
      rerolling={rerolling}
      onSubmitTask={handleSubmitTask}
      workspaceNotice={error}
    />
  );
}
