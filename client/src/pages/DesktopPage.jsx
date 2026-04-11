import { useState, useEffect, useRef, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import {
    Battery, BatteryCharging, Wifi, Volume2, Power, RefreshCw,
    Settings, Save, LogOut, Play, Monitor, Trash2, Code,
    Folder, File, UserCircle, Zap, Briefcase, Palette
} from 'lucide-react';
import { useTheme } from '../contexts/ThemeContext';

import Window from '../components/os/Window';
import DraggableIcon from '../components/os/DraggableIcon';
import CodeEditor from '../components/app/CodeEditor';
import MyComputer from '../components/app/MyComputer';
import RecycleBin from '../components/app/RecycleBin';
import JobPlatform from '../components/app/JobPlatform';
import Notepad from '../components/app/Notepad';
import SettingsModal from '../components/SettingsModal';

const BIOS_LINES = [
    { text: "AMIBIOS (C) 2026 CatTech Industries =^._.^=", delay: 0, cls: "text-slate-800" },
    { text: "CPU: Intel(R) Core(TM) i9-13900K @ 5.80GHz", delay: 200, cls: "text-slate-600" },
    { text: "Memory Test: 65536MB OK", delay: 400, cls: "text-slate-600" },
    { text: "Detecting Primary IDE... NVME SSD 2TB [OK]", delay: 700, cls: "text-emerald-600" },
    { text: "Detecting Secondary IDE... None", delay: 900, cls: "text-slate-400" },
    { text: "GPU: NVIDIA GeForce RTX 5090 24GB [OK]", delay: 1100, cls: "text-emerald-600" },
    { text: "Network: Ethernet 10Gbps [CONNECTED]", delay: 1300, cls: "text-emerald-600" },
    { text: "", delay: 1500 },
    { text: "Boot device: NVME SSD", delay: 1600, cls: "text-blue-600" },
    { text: "Loading PythonCoderOS v2.0.26...", delay: 1800, cls: "text-blue-600 font-bold" },
];

export default function DesktopPage() {
    const navigate = useNavigate();
    const { theme, setTheme, themes, isDark } = useTheme();
    const desktopRef = useRef(null);
    const [desktopBounds, setDesktopBounds] = useState({ w: 1280, h: 800 });

    // --- 1. GAME STATE ---
    const [gameState, setGameState] = useState("BOOT");
    const [bootPhase, setBootPhase] = useState(0);
    const [bootLines, setBootLines] = useState([]);
    const [bootProgress, setBootProgress] = useState(0);
    const [userData, setUserData] = useState(null);   // user จาก localStorage
    const [simState, setSimState] = useState(null);   // state จาก server (เงิน วัน ฯลฯ)
    const [energy, setEnergy] = useState(100);
    const [isEndingDay, setIsEndingDay] = useState(false);
    const [dailySummary, setDailySummary] = useState({
        earned: 0, spent: 0, events: [],
        rentDue: false, rentPaid: false, rentDeducted: 0, daysUntilRent: 7, day: 1, endingHour: 8
    });

    // --- 2. JOB SYSTEM STATE ---
    const [activeJob, setActiveJob] = useState(null);
    const [hasOnboarded, setHasOnboarded] = useState(() => localStorage.getItem('hasOnboarded') === 'true');
    const [jobNotification, setJobNotification] = useState(false);
    const lastJobCountRef = useRef(0);

    const RENT_AMOUNT = 3000;
    const RENT_CYCLE = 7;
    // ดึงค่าจาก simState (server)
    const day = simState?.current_day || 1;
    const currentMoney = parseFloat(simState?.sim_money || 0);

    // --- 3. UI STATE ---
    // --- เวลาในเกม ---
    // 08:00 → 20:00 = 12 ชั่วโมงเกม = 720 นาทีเกม
    // 1 วันเกมใช้เวลาจริง 30 นาที
    const GAME_START_HOUR = 8;
    const GAME_END_HOUR = 20;
    const GAME_DAY_MINUTES = (GAME_END_HOUR - GAME_START_HOUR) * 60;
    const REAL_MINUTES_PER_GAME_DAY = 30;
    const GAME_MINUTE_TICK_MS = (REAL_MINUTES_PER_GAME_DAY * 60 * 1000) / GAME_DAY_MINUTES;
    const REAL_MS_PER_GAME_MINUTE = GAME_MINUTE_TICK_MS;
    const [gameMinutes, setGameMinutes] = useState(0); // 0 = 08:00, 720 = 20:00

    // --- helper: แปลง gameMinutes → { hour, minute, display, progress } ---
    const getGameTime = (mins) => {
        const totalMins = GAME_START_HOUR * 60 + mins;
        const h = Math.floor(totalMins / 60) % 24;
        const m = totalMins % 60;
        const display = `${String(h).padStart(2,'0')}:${String(m).padStart(2,'0')}`;
        const progress = Math.min(100, (mins / GAME_DAY_MINUTES) * 100);
        const isEvening = h >= 18;  // 18:00+ = กลางคืน
        const isNight   = h >= 20;  // 20:00+ = ดึกมาก
        return { h, m, display, progress, isEvening, isNight };
    };
    const gameTime = getGameTime(gameMinutes);
    const formatHourDisplay = useCallback((hourValue) => {
        const normalized = typeof hourValue === 'number' ? hourValue : GAME_START_HOUR;
        const safeHour = Math.min(GAME_END_HOUR, Math.max(GAME_START_HOUR, normalized));
        const hours = Math.floor(safeHour);
        const minutes = Math.round((safeHour - hours) * 60);
        return `${String(hours).padStart(2, '0')}:${String(minutes).padStart(2, '0')}`;
    }, [GAME_END_HOUR, GAME_START_HOUR]);

    const getEnergyForMinutes = useCallback((minutes) => {
        const clampedMinutes = Math.min(GAME_DAY_MINUTES, Math.max(0, minutes));
        return Math.max(0, 100 - ((clampedMinutes / GAME_DAY_MINUTES) * 100));
    }, [GAME_DAY_MINUTES]);
    const getMinutesFromHour = useCallback((hourValue) => {
        if (typeof hourValue !== 'number' || Number.isNaN(hourValue)) {
            return 0;
        }

        const clampedHour = Math.min(GAME_END_HOUR, Math.max(GAME_START_HOUR, hourValue));
        return Math.min(
            GAME_DAY_MINUTES,
            Math.max(0, Math.round((clampedHour - GAME_START_HOUR) * 60))
        );
    }, [GAME_DAY_MINUTES, GAME_END_HOUR, GAME_START_HOUR]);

    const getCurrentUserId = () => userData?.user_id || userData?.id;
    const isGuestSimulationUser = Boolean(userData?.isGuest || String(getCurrentUserId() || '').startsWith('guest_'));
    const getGuestSimStorageKey = (uid) => `game_guest_sim_state_${uid}`;
    const readGuestSimState = (uid) => {
        if (!uid) return null;
        try {
            const stored = JSON.parse(localStorage.getItem(getGuestSimStorageKey(uid)) || 'null');
            return stored || {
                user_id: uid,
                current_day: 1,
                current_hour: 8,
                sim_money: 0,
                battery_percent: 100,
                is_plugged_in: 1,
                jobs_completed: 0,
                jobs_failed: 0,
                total_earned: 0,
                total_spent: 0,
                sim_reputation: 10,
                active_events: [],
                active_jobs: [],
            };
        } catch {
            return {
                user_id: uid,
                current_day: 1,
                current_hour: 8,
                sim_money: 0,
                battery_percent: 100,
                is_plugged_in: 1,
                jobs_completed: 0,
                jobs_failed: 0,
                total_earned: 0,
                total_spent: 0,
                sim_reputation: 10,
                active_events: [],
                active_jobs: [],
            };
        }
    };
    const writeGuestSimState = (uid, nextState) => {
        if (!uid) return null;
        localStorage.setItem(getGuestSimStorageKey(uid), JSON.stringify(nextState));
        return nextState;
    };
    const getDaysUntilRent = useCallback((currentDayValue) => {
        const normalizedDay = Math.max(1, Number(currentDayValue || 1));
        const remainder = normalizedDay % RENT_CYCLE;
        return remainder === 0 ? RENT_CYCLE : RENT_CYCLE - remainder;
    }, [RENT_CYCLE]);

    const syncGameTimeToServer = useCallback(async (minutes) => {
        const uid = userData?.user_id || userData?.id;
        if (!uid) return;

        const currentHour = Number((GAME_START_HOUR + (minutes / 60)).toFixed(2));
        if (userData?.isGuest || String(uid).startsWith('guest_')) {
            const guestState = readGuestSimState(uid);
            const updatedState = writeGuestSimState(uid, {
                ...guestState,
                current_hour: currentHour,
            });
            setSimState(updatedState);
            return;
        }

        try {
            await axios.post('http://localhost:3001/simulation/sync-time', {
                userId: uid,
                currentHour,
            });
            setSimState(prev => prev ? { ...prev, current_hour: currentHour } : prev);
        } catch {
            // Ignore sync failures. The desktop clock should keep running locally.
        }
    }, [GAME_START_HOUR, userData?.id, userData?.isGuest, userData?.user_id]);

    const [windows, setWindows] = useState([]);
    const [minimizedWindows, setMinimizedWindows] = useState([]);
    const [activeWindowId, setActiveWindowId] = useState(null);
    const [isStartMenuOpen, setIsStartMenuOpen] = useState(false);
    const [isPauseMenuOpen, setIsPauseMenuOpen] = useState(false);
    const [showSettingsModal, setShowSettingsModal] = useState(false);
    const [contextMenu, setContextMenu] = useState({ visible: false, x: 0, y: 0, targetFile: null });

    // --- 4. FILE SYSTEM ---
    const [userFiles, setUserFiles] = useState(() => {
        try { return JSON.parse(localStorage.getItem('game_filesystem') || '[]'); } catch { return []; }
    });
    const [recycleBin, setRecycleBin] = useState(() => {
        try { return JSON.parse(localStorage.getItem('game_recycleBin') || '[]'); } catch { return []; }
    });
    const [volume, setVolume] = useState(localStorage.getItem('musicVolume') || 50);

    const updateFiles = useCallback((nf) => { setUserFiles(nf); localStorage.setItem('game_filesystem', JSON.stringify(nf)); }, []);
    const updateBin = useCallback((nb) => { setRecycleBin(nb); localStorage.setItem('game_recycleBin', JSON.stringify(nb)); }, []);
    const handleVolumeChange = useCallback((nextVolume) => {
        setVolume(nextVolume);
        localStorage.setItem('musicVolume', nextVolume);
        const music = document.getElementById('bg-music');
        if (music) {
            music.volume = nextVolume / 100;
            if (music.paused) music.play().catch(() => {});
        }
    }, []);

    // --- 5. BOOT SEQUENCE ---
    useEffect(() => {
        document.body.style.overflow = 'hidden';
        return () => {
            document.body.style.overflow = '';
        };
    }, []);

    useEffect(() => {
        const updateBounds = () => {
            const rect = desktopRef.current?.getBoundingClientRect();
            if (rect) {
                setDesktopBounds({ w: Math.round(rect.width), h: Math.round(rect.height) });
            }
        };

        updateBounds();
        window.addEventListener('resize', updateBounds);
        return () => window.removeEventListener('resize', updateBounds);
    }, []);

    useEffect(() => {
        const userStr = localStorage.getItem('user');
        if (!userStr) { navigate('/'); return; }
        setUserData(JSON.parse(userStr));

        // Boot animation sequence
        const timers = [];
        BIOS_LINES.forEach((line) => {
            timers.push(setTimeout(() => setBootLines(prev => [...prev, line]), line.delay));
        });

        timers.push(setTimeout(() => {
            setBootPhase(1);
            let prog = 0;
            const pi = setInterval(() => {
                prog += Math.random() * 15 + 5;
                if (prog >= 100) {
                    prog = 100;
                    clearInterval(pi);
                    setTimeout(() => {
                        setBootPhase(2);
                        setTimeout(() => setGameState("LOGIN"), 800);
                    }, 500);
                }
                setBootProgress(Math.min(100, prog));
            }, 200);
            timers.push(pi);
        }, 2200));

        return () => timers.forEach(t => clearTimeout(t));
    }, [navigate]);

    // --- 6. DESKTOP EFFECTS ---
    useEffect(() => {
        if (gameState !== "DESKTOP") return;

        // Reset game time to 08:00 at the start of each day
        setGameMinutes(0);
        setEnergy(100);

        // fetchSimState
        const fetchSimState = () => {
            const uid = userData?.user_id || userData?.id;
            if (!uid) return;
            if (userData?.isGuest || String(uid).startsWith('guest_')) {
                const guestState = readGuestSimState(uid);
                const restoredMinutes = getMinutesFromHour(guestState?.current_hour);
                setSimState(guestState);
                setGameMinutes(restoredMinutes);
                setEnergy(getEnergyForMinutes(restoredMinutes));
                return;
            }
        axios.get(`http://localhost:3001/simulation/state-v2/${uid}`)
                .then(r => {
                    const restoredMinutes = getMinutesFromHour(r.data?.current_hour);
                    setSimState(r.data);
                    setGameMinutes(restoredMinutes);
                    setEnergy(getEnergyForMinutes(restoredMinutes));
                })
                .catch(() => {});
        };
        fetchSimState();

        // ── Game Clock ──────────────────────────────────────────────
        // ทุก REAL_MS_PER_GAME_MINUTE = 1 game minute
        // 08:00 -> 20:00 = 720 game minutes = 30 real minutes
        const clockTimer = setInterval(() => {
            setGameMinutes(prev => {
                const next = prev + 1;
                // Reaching 20:00 ends the day automatically
                if (next >= GAME_DAY_MINUTES) {
                    clearInterval(clockTimer);
                    setEnergy(getEnergyForMinutes(GAME_DAY_MINUTES));
                    return GAME_DAY_MINUTES;
                }
                setEnergy(getEnergyForMinutes(next));
                return next;
            });
        }, REAL_MS_PER_GAME_MINUTE);

        // ── Energy Drain ──────────────────────────────────────────────
        // ลด 100 หน่วยใน 36 นาที → ลดทุก 3 วินาที ครั้งละ 100/720 ≈ 0.139
        // ใช้ REAL_MS_PER_GAME_MINUTE เพื่อให้ sync กับ clock

        // ── System Polling (server sync) ─────────────────────────────
        const systemTimer = setInterval(() => {
            const uid = userData?.user_id || userData?.id;
            if (!uid) return;
            fetchSimState();
            axios.get('http://localhost:3001/jobs/available', {
                params: uid ? { userId: uid } : undefined
            }).then(r => {
                const c = r.data.length;
                if (c > lastJobCountRef.current) setJobNotification(true);
                if (c === 0) setJobNotification(false);
                lastJobCountRef.current = c;
            }).catch(() => {});
        }, 15000); // sync ทุก 15 วินาทีจริง (= 6 game minutes)

        // ── Onboard ──────────────────────────────────────────────────
        let onboardTimer;
        if (!hasOnboarded) {
            onboardTimer = setTimeout(() => {
                if (!windows.find(w => w.id === 'jobs')) {
                    openApp('jobs', 'DevFreelance', 'jobs');
                    setHasOnboarded(true);
                    localStorage.setItem('hasOnboarded', 'true');
                    setJobNotification(false);
                }
            }, 1500);
        }

        const handleEsc = (e) => { if (e.key === 'Escape') setIsPauseMenuOpen(p => !p); };
        window.addEventListener('keydown', handleEsc);

        return () => {
            clearInterval(clockTimer);
            clearInterval(systemTimer);
            if (onboardTimer) clearTimeout(onboardTimer);
            window.removeEventListener('keydown', handleEsc);
        };
    }, [gameState, userData?.id, userData?.isGuest, hasOnboarded, windows, getEnergyForMinutes, getMinutesFromHour]); // eslint-disable-line react-hooks/exhaustive-deps

    useEffect(() => {
        if (gameState !== "DESKTOP" || isEndingDay) return;

        const shouldSync =
            gameMinutes === 0 ||
            gameMinutes === GAME_DAY_MINUTES ||
            gameMinutes % 6 === 0;

        if (shouldSync) {
            syncGameTimeToServer(gameMinutes);
        }
    }, [gameMinutes, gameState, isEndingDay, GAME_DAY_MINUTES, syncGameTimeToServer]);

    // --- 6.5 AUTO END DAY when reaching 20:00 ---
    useEffect(() => {
        if (gameState !== "DESKTOP") return;
        if (gameMinutes >= GAME_DAY_MINUTES && !isEndingDay) {
            handleShutdown(false); // จบวันปกติ
        }
    }, [gameMinutes, gameState, isEndingDay, GAME_DAY_MINUTES]);

    // --- 7. FUNCTIONS ---
    const openApp = (appId, title, type, params = {}) => {
        if (appId === 'jobs') setJobNotification(false);
        if (minimizedWindows.includes(appId)) { setMinimizedWindows(p => p.filter(id => id !== appId)); setActiveWindowId(appId); return; }
        if (windows.find(w => w.id === appId)) { setActiveWindowId(appId); return; }
        setWindows(p => [...p, { id: appId, title, type, params }]); setActiveWindowId(appId); setIsStartMenuOpen(false);
    };
    const closeApp = (appId) => { setWindows(p => p.filter(w => w.id !== appId)); setMinimizedWindows(p => p.filter(id => id !== appId)); };
    const toggleMinimize = (appId) => {
        if (minimizedWindows.includes(appId)) { setMinimizedWindows(p => p.filter(id => id !== appId)); setActiveWindowId(appId); }
        else { setMinimizedWindows([...minimizedWindows, appId]); setActiveWindowId(null); }
    };

    const handleCreateFile = (f) => updateFiles([...userFiles, f]);
    const handleDeleteFile = (fileId) => {
        const file = userFiles.find(f => f.id === fileId); if (!file) return;
        const ids = [fileId];
        const collect = (pid) => { userFiles.filter(f => f.parentId === pid).forEach(c => { ids.push(c.id); if (c.type === 'folder') collect(c.id); }); };
        if (file.type === 'folder') collect(fileId);
        const deleted = userFiles.filter(f => ids.includes(f.id)).map(f => ({ ...f, deletedAt: new Date().toISOString() }));
        updateFiles(userFiles.filter(f => !ids.includes(f.id))); updateBin([...recycleBin, ...deleted]);
    };
    const handleUpdateFile = (fid, content) => updateFiles(userFiles.map(f => f.id === fid ? { ...f, content } : f));
    const handleRestoreFile = (fid) => { const i = recycleBin.find(f => f.id === fid); if (!i) return; const { deletedAt, ...r } = i; updateFiles([...userFiles, r]); updateBin(recycleBin.filter(f => f.id !== fid)); };
    const handleDeletePermanent = (fid) => updateBin(recycleBin.filter(f => f.id !== fid));
    const handleEmptyBin = () => updateBin([]);
    const handleOpenFile = (file) => {
        const ext = file.name.split('.').pop()?.toLowerCase(); const wid = `file_${file.id}`;
        if (ext === 'py' || ext === 'js') openApp(wid, file.name, 'code', { folderId: file.parentId, initialFileId: file.id });
        else openApp(wid, file.name, 'notepad', { fileId: file.id });
    };
    const handleContextMenu = (e, targetFile = null) => {
        e.preventDefault();
        const rect = desktopRef.current?.getBoundingClientRect();
        const x = rect ? e.clientX - rect.left : e.clientX;
        const y = rect ? e.clientY - rect.top : e.clientY;
        setContextMenu({ visible: true, x, y, targetFile });
    };
    const createNewFile = (type) => {
        const name = prompt(`Enter ${type} Name:`, type === 'Folder' ? 'New Folder' : 'new_file.txt');
        if (name) handleCreateFile({ id: Date.now(), name, type: type === 'Folder' ? 'folder' : 'file', parentId: null, content: type !== 'Folder' ? '' : undefined, createdAt: new Date().toISOString(), pos: { x: contextMenu.x, y: contextMenu.y } });
        setContextMenu({ ...contextMenu, visible: false });
    };
    const handleMoveFile = (fid, tid) => updateFiles(userFiles.map(f => { if (f.id === fid) { const { pos, ...r } = f; return { ...r, parentId: tid }; } return f; }));
    const handleDropOnBin = (d) => { if (d?.fileId) handleDeleteFile(d.fileId); };
    const handleDropOnFolder = (fid, d) => { if (d?.fileId && d.fileId !== fid) handleMoveFile(d.fileId, fid); };
    const handleDeleteFromDesktop = () => { if (contextMenu.targetFile) handleDeleteFile(contextMenu.targetFile.id); setContextMenu({ ...contextMenu, visible: false }); };

    const handleShutdown = useCallback(async (forced = false) => {
        if (isEndingDay) return;
        setIsEndingDay(true);
        const uid = userData?.user_id || userData?.id;
        try {
            if (userData?.isGuest || String(uid || '').startsWith('guest_')) {
                const guestState = readGuestSimState(uid);
                const currentDay = Number(guestState?.current_day || day || 1);
                const newDay = currentDay + 1;
                const endingHour = Number(guestState?.current_hour || (GAME_START_HOUR + (gameMinutes / 60)) || GAME_START_HOUR);
                const updatedGuestState = writeGuestSimState(uid, {
                    ...guestState,
                    current_day: newDay,
                    current_hour: GAME_START_HOUR,
                    active_events: [],
                    active_jobs: [],
                });

                setDailySummary({
                    gameOver: false,
                    earned: 0,
                    spent: 0,
                    events: [forced ? 'พลังงานหมด ระบบจะเริ่มวันใหม่ให้อัตโนมัติ' : 'เริ่มวันใหม่เรียบร้อยแล้ว'],
                    rentDue: false,
                    rentPaid: false,
                    rentDeducted: 0,
                    daysUntilRent: getDaysUntilRent(newDay),
                    day: currentDay,
                    endingHour,
                    newDay,
                    money: updatedGuestState.sim_money || 0,
                });
                setSimState(updatedGuestState);
                setGameState("SUMMARY");
                return;
            }

            await syncGameTimeToServer(gameMinutes);
      const res = await axios.post('http://localhost:3001/simulation/next-day-v2', { userId: uid });
            const data = res.data;

            if (data.gameOver) {
                // Game Over
                setDailySummary({
                    gameOver: true,
                    finalDay: data.finalDay,
                    endingHour: data.finalHour ?? GAME_START_HOUR,
                    finalMoney: data.finalMoney,
                    jobsCompleted: data.jobsCompleted,
                    reason: data.reason,
                    events: [`💀 ${data.reason}`],
                    earned: 0, spent: 0,
                    rentDue: true, rentPaid: false, rentDeducted: 0,
                    daysUntilRent: 0, day: data.finalDay
                });
                setGameState("GAME_OVER");
                return;
            }

            // Build events list
            const events = [...(data.summary.rentEvents || [])];
            if (forced) events.push("⚠️ หมดพลังงาน — บันทึกข้อมูลบางส่วนอาจหาย");
            if (data.summary.todayJobsDone > 0)
                events.push(`✅ ส่งงานวันนี้ ${data.summary.todayJobsDone} งาน`);
            if (events.length === 0)
                events.push("📝 วันนี้ยังไม่ได้ส่งงาน — ค่าเช่ากำลังใกล้เข้ามา!");

            setDailySummary({
                gameOver: false,
                earned: data.summary.todayEarned,
                spent: data.rentDeducted,
                events,
                rentDue: data.rentDue,
                rentPaid: data.rentPaid,
                rentDeducted: data.rentDeducted,
                daysUntilRent: data.daysUntilRent,
                day: data.summary.day,
                endingHour: data.summary.endingHour ?? GAME_START_HOUR,
                newDay: data.newDay,
                money: data.money,
            });
            // อัปเดต simState ทันที
            setSimState(prev => ({ ...prev, current_day: data.newDay, current_hour: GAME_START_HOUR, sim_money: data.money }));
            setGameState("SUMMARY");
        } catch (err) {
            console.error("❌ next-day error:", err);
            // Fallback: ถ้า server ล่ม ให้ข้ามวันโดยไม่เช็คค่าเช่า
            setDailySummary({
                gameOver: false, earned: 0, spent: 0,
                events: ["⚠️ ไม่สามารถเชื่อมต่อ server ได้"],
                rentDue: false, rentPaid: false, rentDeducted: 0, daysUntilRent: 7,
                day: day,
                endingHour: GAME_START_HOUR
            });
            setGameState("SUMMARY");
        } finally {
            setIsEndingDay(false);
        }
    }, [GAME_START_HOUR, day, gameMinutes, getDaysUntilRent, syncGameTimeToServer, userData?.id, userData?.user_id]);
    const startNextDay = () => {
        setGameMinutes(0);   // reset game time to 08:00
        setEnergy(100);
        setGameState("DESKTOP");
    };
    const handleAcceptJob = (job) => setActiveJob(job);
    const handleJobComplete = () => { setActiveJob(null); closeApp('code'); };

    const renderWindow = (win) => {
        switch (win.type) {
            case 'pc': return <MyComputer files={userFiles} onCreateFile={handleCreateFile} onDeleteFile={handleDeleteFile} onOpenFile={handleOpenFile} initialFolderId={win.params?.initialFolderId} />;
            case 'bin': return <RecycleBin items={recycleBin} onRestore={handleRestoreFile} onDeletePermanent={handleDeletePermanent} onEmptyBin={handleEmptyBin} />;
            case 'code': return <CodeEditor files={userFiles} folderId={win.params?.folderId} onCreateFile={handleCreateFile} onDeleteFile={handleDeleteFile} onUpdateFile={handleUpdateFile} />;
            case 'notepad': const nf = userFiles.find(f => f.id === win.params?.fileId); return <Notepad fileId={win.params?.fileId} fileName={nf?.name || 'Untitled'} content={nf?.content || ''} onSave={handleUpdateFile} />;
            case 'jobs': return <JobPlatform 
                onAcceptJob={handleAcceptJob} 
                userData={{ ...userData, id: userData?.user_id || userData?.id }} 
                simReputation={simState?.sim_reputation ?? 10}
                files={userFiles} />;
            default: return <div className="p-4 text-t-muted">Unknown app</div>;
        }
    };

    // =============================================
    // RENDER: BOOT SEQUENCE
    // =============================================
    if (gameState === "BOOT") {
        return (
            <div className="h-screen font-mono relative overflow-hidden select-none transition-colors duration-300 bg-white">
                <div className="absolute inset-0 pointer-events-none opacity-[0.02]"
                    style={{ background: `repeating-linear-gradient(0deg, transparent, transparent 2px, #cbd5e1 2px, #cbd5e1 4px)` }} />

                {bootPhase === 0 && (
                    <div className="p-8 animate-fade-in">
                        {bootLines.map((line, i) => (
                            <div key={i} className={`${line.cls || 'text-slate-800'} text-sm mb-0.5 animate-fade-in`}
                                style={{ animationDelay: `${i * 50}ms` }}>{line.text}</div>
                        ))}
                        <span className="inline-block w-2 h-4 bg-blue-500 animate-blink mt-2"></span>
                    </div>
                )}

                {bootPhase === 1 && (
                    <div className="h-full flex flex-col items-center justify-center animate-fade-in">
                        <div className="mb-8 relative">
                            <div className="text-5xl font-black text-blue-600 animate-pulse drop-shadow-md">⟨/⟩</div>
                            <div className="absolute -top-3 -right-4 text-sm opacity-60 animate-cat-blink select-none">🐱</div>
                        </div>
                        <h2 className="text-slate-800 text-xl font-bold mb-2 tracking-widest uppercase">PythonCoderOS</h2>
                        <p className="text-slate-500 text-xs mb-8 tracking-wider font-semibold">v2.0.26 BUILD 20260227</p>
                        <div className="w-72 h-2 rounded-full overflow-hidden border border-slate-200 bg-slate-100 shadow-inner">
                            <div className="h-full bg-gradient-to-r from-blue-500 to-indigo-500 rounded-full transition-all duration-300 shadow-[0_0_10px_rgba(59,130,246,0.5)]"
                                style={{ width: `${bootProgress}%` }} />
                        </div>
                        <p className="text-slate-500 text-xs mt-4 font-mono font-medium">
                            {bootProgress < 30 ? 'Loading kernel modules...' : bootProgress < 60 ? 'Initializing services...' : bootProgress < 90 ? 'Starting desktop environment...' : 'Almost ready...'}
                        </p>
                    </div>
                )}

                {bootPhase === 2 && (
                    <div className="h-full animate-fade-in" style={{ animationDuration: '0.3s', background: 'white' }} />
                )}
            </div>
        );
    }

    // =============================================
    // RENDER: LOGIN SCREEN
    // =============================================
    if (gameState === "LOGIN") {
        return (
            <div className="h-screen relative overflow-hidden flex flex-col items-center justify-center transition-colors duration-300 bg-slate-50">
                <div className="absolute inset-0 bg-white/40 pointer-events-none backdrop-blur-3xl"></div>
                
                <div className="bg-white/80 backdrop-blur-xl p-12 rounded-[2.5rem] flex flex-col items-center relative z-10 animate-scale-in
                    shadow-[0_20px_60px_-15px_rgba(0,0,0,0.1)] border border-white">
                    <div className="w-32 h-32 rounded-full flex items-center justify-center text-6xl font-black text-white mb-8 relative
                        bg-gradient-to-br from-blue-500 to-indigo-600 shadow-xl shadow-blue-500/30 border-[6px] border-white">
                        {userData?.username?.[0].toUpperCase()}
                    </div>
                    <h2 className="text-3xl text-slate-800 font-extrabold mb-2 tracking-tight">{userData?.username}</h2>
                    <p className="text-slate-500 text-sm mb-10 font-medium">Welcome back to your workspace</p>
                    <button onClick={() => setGameState("DESKTOP")}
                        className="px-14 py-4 rounded-2xl font-bold border-2 border-blue-100 hover:border-blue-200 text-sm tracking-widest uppercase
                        bg-white hover:bg-blue-50/50 shadow-sm hover:shadow-xl hover:-translate-y-1
                        transition-all duration-300 active:scale-95 text-blue-600">Enter System</button>
                    <div className="absolute -bottom-5 right-6 flex gap-2 opacity-20 text-xs select-none grayscale">
                        <span>🐾</span><span className="mt-1">🐾</span><span>🐾</span>
                    </div>
                </div>
                <div className="absolute bottom-8 text-slate-400 text-sm font-bold tracking-widest uppercase">
                    {new Date().toLocaleTimeString([], {hour:'2-digit', minute:'2-digit'})}
                    <span className="ml-3 opacity-60 font-medium">— Day {day}</span>
                </div>
            </div>
        );
    }

    // =============================================
    // RENDER: DAILY SUMMARY
    // =============================================
    // =============================================
    // RENDER: GAME OVER
    // =============================================
    if (gameState === "GAME_OVER") {
        return (
            <div className="h-screen flex items-center justify-center relative overflow-hidden transition-colors duration-300">
                <div className="absolute inset-0 bg-black pointer-events-none"></div>
                <div className="relative z-10 text-center animate-scale-in max-w-lg w-full px-6">
                    <div className="text-8xl mb-6 animate-bounce">💀</div>
                    <h1 className="text-5xl font-black text-red-500 mb-2 tracking-wider uppercase">Game Over</h1>
                    <p className="text-red-300 text-lg mb-8">{dailySummary.reason}</p>

                    <div className="bg-gray-900 border border-red-900/50 rounded-2xl p-6 mb-8 text-left space-y-3">
                        <div className="flex justify-between text-sm">
                            <span className="text-gray-400">อยู่รอดมาได้</span>
                            <span className="text-white font-bold">{dailySummary.finalDay} วัน</span>
                        </div>
                        <div className="flex justify-between text-sm">
                            <span className="text-gray-400">เงินสุดท้าย</span>
                            <span className="text-red-400 font-bold">{(dailySummary.finalMoney || 0).toLocaleString()} ฿</span>
                        </div>
                        <div className="flex justify-between text-sm">
                            <span className="text-gray-400">งานที่ทำสำเร็จ</span>
                            <span className="text-white font-bold">{dailySummary.jobsCompleted || 0} งาน</span>
                        </div>
                        <div className="flex justify-between text-sm">
                            <span className="text-gray-400">Ended At</span>
                            <span className="text-white font-bold">{formatHourDisplay(dailySummary.endingHour)}</span>
                        </div>
                    </div>

                    <button
                        onClick={async () => {
                            const uid = userData?.user_id || userData?.id;
                            if (userData?.isGuest || String(uid || '').startsWith('guest_')) {
                                writeGuestSimState(uid, {
                                    user_id: uid,
                                    current_day: 1,
                                    current_hour: GAME_START_HOUR,
                                    sim_money: 0,
                                    battery_percent: 100,
                                    is_plugged_in: 1,
                                    jobs_completed: 0,
                                    jobs_failed: 0,
                                    total_earned: 0,
                                    total_spent: 0,
                                    sim_reputation: 10,
                                    active_events: [],
                                    active_jobs: [],
                                });
                            } else {
                                await axios.post('http://localhost:3001/simulation/new-game', { userId: uid });
                            }
                            setSimState(null);
                            setEnergy(100);
                            setGameMinutes(0);
                            setGameState("DESKTOP");
                        }}
                        className="w-full py-4 rounded-xl font-black text-lg text-white uppercase tracking-wider
                            bg-red-600 hover:bg-red-500 hover:shadow-[0_0_30px_rgba(239,68,68,0.5)]
                            transition-all duration-300 active:scale-[0.98]"
                    >
                        🔄 เริ่มใหม่
                    </button>
                </div>
            </div>
        );
    }

    // =============================================
    // RENDER: DAILY SUMMARY
    // =============================================
    if (gameState === "SUMMARY") {
        const netBalance = (dailySummary.earned || 0) - (dailySummary.rentDeducted || 0);
        return (
            <div className="h-screen flex items-center justify-center relative overflow-hidden transition-colors duration-300 bg-slate-50">
                <div className="absolute inset-0 bg-white/50 backdrop-blur-md pointer-events-none"></div>

                <div className="bg-white/80 backdrop-blur-xl p-10 rounded-[2rem] max-w-lg w-full relative z-10 animate-scale-in shadow-2xl border border-white">
                    <div className="absolute -top-5 left-1/2 -translate-x-1/2 px-8 py-2.5 rounded-full
                        bg-gradient-to-r from-amber-400 to-orange-500 text-white font-black text-sm tracking-widest
                        shadow-lg shadow-orange-500/30 animate-bounce-in whitespace-nowrap border-2 border-white">
                        DAY {dailySummary.day} COMPLETE! 🐱
                    </div>

                    <h1 className="text-3xl font-black text-center mb-8 mt-6 text-slate-800 tracking-tight uppercase">Daily Report</h1>

                    <div className="space-y-4 mb-8 text-sm">
                        <div className="flex justify-between items-center px-1">
                            <span className="text-slate-500 font-bold uppercase tracking-wide">Ended At</span>
                            <span className="text-slate-800 font-black text-lg">{formatHourDisplay(dailySummary.endingHour)}</span>
                        </div>
                        {/* รายรับวันนี้ */}
                        <div className="flex justify-between items-center p-4 rounded-2xl bg-emerald-50 border border-emerald-100 shadow-sm">
                            <span className="text-emerald-700 font-bold tracking-wide uppercase">Income Today</span>
                            <span className="text-emerald-600 font-black text-xl">+{(dailySummary.earned || 0).toLocaleString()} <span className="text-sm font-bold">฿</span></span>
                        </div>

                        {/* ค่าเช่า (แสดงเฉพาะวันที่ถึงกำหนด) */}
                        {dailySummary.rentDue && (
                            <div className={`flex justify-between items-center p-4 rounded-2xl shadow-sm border ${
                                dailySummary.rentPaid
                                    ? 'bg-emerald-50 border-emerald-100'
                                    : 'bg-red-50 border-red-100'
                            }`}>
                                <span className={`font-bold tracking-wide uppercase ${dailySummary.rentPaid ? 'text-emerald-700' : 'text-red-700'}`}>
                                    {dailySummary.rentPaid ? '🏠 Rent Paid' : '🏠 Rent Due'}
                                </span>
                                <span className={`font-black text-xl ${dailySummary.rentPaid ? 'text-emerald-600' : 'text-red-600'}`}>
                                    -{(dailySummary.rentDeducted || RENT_AMOUNT).toLocaleString()} <span className="text-sm font-bold">฿</span>
                                </span>
                            </div>
                        )}

                        {/* Events log */}
                        <div className="p-5 rounded-2xl bg-slate-50 border border-slate-200 shadow-inner font-medium text-slate-600 space-y-2">
                            {dailySummary.events.map((e, i) => <div key={i} className="flex items-start gap-2"><div className="w-1.5 h-1.5 rounded-full bg-blue-400 mt-1.5 shrink-0"></div> {e}</div>)}
                            <div className="text-orange-500/80 text-xs mt-3 italic text-center font-semibold pb-1">"Meow~ Good job today!"</div>
                        </div>

                        {/* เงินคงเหลือ + ค่าเช่าถัดไป */}
                        <div className="grid grid-cols-2 gap-4">
                            <div className="p-4 rounded-2xl bg-white border border-slate-200 shadow-sm text-center">
                                <div className="text-[10px] text-slate-400 font-bold uppercase tracking-widest mb-1.5">Current Balance</div>
                                <div className="text-2xl font-black text-slate-800">
                                    {(dailySummary.money ?? currentMoney).toLocaleString()}
                                    <span className="text-sm font-bold text-slate-400 ml-1">฿</span>
                                </div>
                            </div>
                            <div className="p-4 rounded-2xl bg-red-50 border border-red-100 shadow-sm text-center">
                                <div className="text-[10px] text-red-500 font-bold uppercase tracking-widest mb-1.5">Rent Due In</div>
                                <div className="text-2xl font-black text-red-600">
                                    {dailySummary.daysUntilRent}
                                    <span className="text-sm font-bold text-red-400 ml-1">Days</span>
                                </div>
                                <div className="text-[11px] font-bold text-red-500/80 mt-1">{RENT_AMOUNT.toLocaleString()} ฿</div>
                            </div>
                        </div>
                    </div>

                    <button onClick={startNextDay}
                        className="w-full py-4 rounded-2xl font-bold text-lg text-white uppercase tracking-widest
                        bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-700 hover:to-indigo-700
                        shadow-lg shadow-blue-500/30 hover:shadow-xl hover:-translate-y-1 hover:shadow-blue-500/40
                        transition-all duration-300 active:scale-[0.98]">
                        Start Day {(dailySummary.newDay || day + 1)}
                    </button>
                </div>
            </div>
        );
    }

    // =============================================
    // RENDER: DESKTOP
    // =============================================
    return (
        <div className="fixed inset-0 z-20 overflow-hidden font-sans select-none transition-colors duration-300 bg-[radial-gradient(circle_at_top,rgba(15,23,42,0.12),transparent_35%),linear-gradient(180deg,#dbeafe_0%,#f8fafc_42%,#e2e8f0_100%)]">
            
            <div className="absolute inset-0 pointer-events-none opacity-40" style={{ backgroundImage: 'radial-gradient(rgba(148,163,184,0.18) 1px, transparent 1px)', backgroundSize: '24px 24px' }}></div>
            <div className="absolute inset-x-0 bottom-0 h-[32vh] bg-gradient-to-t from-slate-700/12 via-slate-400/5 to-transparent pointer-events-none"></div>
            <div className="absolute inset-x-0 bottom-0 h-40 bg-gradient-to-t from-amber-100/40 to-transparent pointer-events-none"></div>
            <div className="absolute bottom-16 right-10 opacity-[0.08] text-[100px] select-none pointer-events-none grayscale drop-shadow-sm">🐱</div>

            <div className="relative z-10 flex h-screen items-center justify-center p-2 sm:p-4 md:p-6">
                <div className="relative w-full max-w-[1400px]" style={{ maxHeight: 'calc(100vh - 2rem)' }}>
                    <div className="absolute inset-x-[8%] -bottom-6 h-10 rounded-full bg-slate-900/15 blur-2xl"></div>
                    <div className="rounded-[1.5rem] sm:rounded-[2rem] bg-slate-800 p-2 sm:p-3 md:p-4 shadow-[0_30px_80px_rgba(15,23,42,0.28)] ring-1 ring-white/20" style={{ maxHeight: 'calc(100vh - 2rem)' }}>
                        <div
                            ref={desktopRef}
                            className="relative w-full overflow-hidden rounded-[1rem] sm:rounded-[1.4rem] border border-slate-200/70 bg-slate-900"
                            style={{ aspectRatio: '16/10', maxHeight: 'calc(100vh - 5rem)' }}
                            onContextMenu={(e) => handleContextMenu(e)}
                            onClick={() => { setContextMenu({ ...contextMenu, visible: false }); setIsStartMenuOpen(false); }}
                        >
                            <div className="absolute inset-0 pointer-events-none bg-[radial-gradient(circle_at_top_left,rgba(59,130,246,0.28),transparent_30%),radial-gradient(circle_at_top_right,rgba(99,102,241,0.24),transparent_28%),linear-gradient(180deg,#eff6ff_0%,#dbeafe_32%,#cbd5e1_100%)]"></div>
                            <div className="absolute inset-0 pointer-events-none opacity-40" style={{ backgroundImage: 'linear-gradient(rgba(255,255,255,0.22) 1px, transparent 1px), linear-gradient(90deg, rgba(255,255,255,0.18) 1px, transparent 1px)', backgroundSize: '40px 40px' }}></div>
                            <div className="absolute inset-x-0 bottom-0 h-40 bg-gradient-to-t from-slate-900/10 to-transparent pointer-events-none"></div>

            {/* Desktop Icons */}
            <DraggableIcon id="pc" label="My Computer" icon={<Monitor size={28} className="text-blue-600" />} initialPos={{ x: 1.5, y: 2 }} onOpen={() => openApp('pc', 'My Computer', 'pc')} onContextMenu={handleContextMenu} containerRef={desktopRef} />
            <DraggableIcon id="bin" label="Recycle Bin" icon={<Trash2 size={28} className="text-slate-400" />} initialPos={{ x: 1.5, y: 15 }} onOpen={() => openApp('bin', 'Recycle Bin', 'bin')} onContextMenu={handleContextMenu} isDropTarget onFileDrop={handleDropOnBin} dropHighlightColor="ring-red-300" containerRef={desktopRef} />
            <DraggableIcon id="code" label="VS Code" icon={<Code size={28} className="text-indigo-600" />} initialPos={{ x: 1.5, y: 28 }} onOpen={() => openApp('code', 'VS Code', 'code')} onContextMenu={handleContextMenu} containerRef={desktopRef} />
            <DraggableIcon id="jobs" label="Freelance" initialPos={{ x: 1.5, y: 41 }} onOpen={() => openApp('jobs', 'DevFreelance', 'jobs')} onContextMenu={handleContextMenu} containerRef={desktopRef}
                icon={<div className="relative"><Briefcase size={28} className="text-amber-600" />{jobNotification && (<span className="absolute -top-1 -right-1 flex h-3 w-3"><span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-red-400 opacity-75"></span><span className="relative inline-flex rounded-full h-3 w-3 bg-red-500 border border-white"></span></span>)}</div>} />
            <DraggableIcon id="settings" label="System" icon={<Settings size={28} className="text-slate-500" />} initialPos={{ x: 1.5, y: 54 }} onOpen={() => setIsPauseMenuOpen(true)} onContextMenu={handleContextMenu} containerRef={desktopRef} />

            {userFiles.filter(f => !f.parentId && f.pos).map(f => (
                <DraggableIcon key={f.id} id={f.id} label={f.name} initialPos={f.pos}
                    icon={f.type === 'folder' ? <Folder size={28} className="text-amber-400" fill="currentColor" opacity={0.8} /> : <File size={28} className="text-slate-400" />}
                    onOpen={() => f.type === 'folder' ? openApp(`pc_${f.id}`, f.name, 'pc', { initialFolderId: f.id }) : handleOpenFile(f)}
                    onContextMenu={(e) => handleContextMenu(e, f)} dragData={{ fileId: f.id, fileName: f.name, fileType: f.type }}
                    isDropTarget={f.type === 'folder'} onFileDrop={(data) => handleDropOnFolder(f.id, data)} containerRef={desktopRef} />
            ))}

            {/* Windows */}
            {windows.map(win => (
                <div key={win.id} style={{ display: minimizedWindows.includes(win.id) ? 'none' : 'block' }}>
                    <Window id={win.id} title={win.title} onClose={() => closeApp(win.id)} onMinimize={() => toggleMinimize(win.id)} isActive={activeWindowId === win.id} onFocus={() => setActiveWindowId(win.id)} bounds={desktopBounds}>
                        {renderWindow(win)}
                    </Window>
                </div>
            ))}

            {/* Context Menu */}
            {contextMenu.visible && (
                <div className="absolute bg-white/90 backdrop-blur-xl border border-slate-200 rounded-xl shadow-xl py-1.5 w-48 z-50 text-slate-700 text-sm animate-slide-menu overflow-hidden font-medium"
                    style={{ top: contextMenu.y, left: contextMenu.x }}>
                    {contextMenu.targetFile ? (
                        <>
                            <div className="px-4 py-2 text-xs font-bold uppercase tracking-widest text-slate-400 border-b border-slate-100 truncate">{contextMenu.targetFile.name}</div>
                            <button onClick={() => { handleOpenFile(contextMenu.targetFile); setContextMenu({...contextMenu, visible: false}); }}
                                className="w-full text-left px-4 py-2.5 hover:bg-slate-50 flex gap-2 items-center transition-colors hover:text-blue-600"><File size={14} /> Open</button>
                            <button onClick={handleDeleteFromDesktop}
                                className="w-full text-left px-4 py-2.5 hover:bg-red-50 flex gap-2 items-center text-red-500 transition-colors"><Trash2 size={14} /> Delete</button>
                        </>
                    ) : (
                        <>
                            <button onClick={() => createNewFile('Folder')} className="w-full text-left px-4 py-2.5 hover:bg-slate-50 flex gap-2 items-center transition-colors hover:text-blue-600"><Folder size={14} className="text-amber-500" /> New Folder</button>
                            <button onClick={() => createNewFile('File')} className="w-full text-left px-4 py-2.5 hover:bg-slate-50 flex gap-2 items-center transition-colors hover:text-blue-600"><File size={14} className="text-slate-400" /> New File</button>
                        </>
                    )}
                </div>
            )}

            {/* Pause Menu */}
            {isPauseMenuOpen && (
                <div className="absolute inset-0 bg-slate-900/40 backdrop-blur-md z-[60] flex items-center justify-center animate-fade-in">
                    <div className="bg-white/95 backdrop-blur-xl p-8 rounded-3xl shadow-2xl w-96 animate-scale-in border border-white">
                        <h2 className="text-2xl font-black text-slate-800 text-center mb-8 uppercase tracking-[0.2em] relative">
                            System Menu
                            <div className="w-12 h-1 bg-blue-500 mx-auto mt-4 rounded-full"></div>
                        </h2>
                        <div className="space-y-3">
                            <MenuButton icon={<Play size={18} />} label="RESUME" onClick={() => setIsPauseMenuOpen(false)} primary />
                            <MenuButton icon={<Settings size={18} />} label="SETTINGS" onClick={() => { setIsPauseMenuOpen(false); setShowSettingsModal(true); }} />
                            <MenuButton icon={<Save size={18} />} label="SAVE GAME" onClick={() => alert("Game Saved!")} />
                            <MenuButton icon={<LogOut size={18} />} label="EXIT TO TITLE" onClick={() => navigate('/menu')} danger />
                        </div>
                    </div>
                </div>
            )}

            <SettingsModal
                open={showSettingsModal}
                onClose={() => setShowSettingsModal(false)}
                volume={volume}
                onVolumeChange={handleVolumeChange}
            />

            {/* Start Menu */}
            {isStartMenuOpen && (
                <div className="absolute bottom-[3.5rem] left-2 w-80 bg-white/90 backdrop-blur-2xl rounded-2xl shadow-[0_5px_30px_rgba(0,0,0,0.15)] border border-white/60 z-[60] flex flex-col animate-slide-menu overflow-hidden"
                    onClick={e => e.stopPropagation()}>
                    <div className="p-5 flex items-center gap-4 bg-slate-50 border-b border-slate-100">
                        <div className="w-12 h-12 rounded-2xl bg-gradient-to-br from-blue-500 to-indigo-600 flex items-center justify-center shadow-md shadow-blue-500/20">
                            {userData?.username?.[0].toUpperCase() || <UserCircle size={28} className="text-white" />}
                        </div>
                        <div>
                            <div className="font-bold text-slate-800 text-lg tracking-tight">{userData?.username}</div>
                            <div className="text-xs text-emerald-600 font-medium flex items-center gap-1.5"><span className="w-2 h-2 bg-emerald-500 rounded-full shadow-[0_0_5px_rgba(16,185,129,0.5)]"></span> Online</div>
                        </div>
                    </div>
                    <div className="p-3 bg-white flex justify-between">
                        <button onClick={() => window.location.reload()} className="flex items-center gap-2 px-4 py-2 hover:bg-slate-50 rounded-xl text-slate-600 font-bold transition-colors w-full justify-center"><RefreshCw size={16} className="text-blue-500" /> Restart</button>
                        <div className="w-px bg-slate-100 mx-2"></div>
                        <button 
                        onClick={() => handleShutdown(false)} 
                        disabled={isEndingDay}
                        className={`flex items-center gap-2 px-4 py-2 hover:bg-red-50 rounded-xl text-slate-600 font-bold transition-colors w-full justify-center ${isEndingDay ? 'opacity-50 cursor-wait' : 'hover:text-red-500'}`}>
                        <Power size={16} className={isEndingDay ? 'text-slate-400' : 'text-red-400'} /> {isEndingDay ? 'Saving' : 'Sleep'}
                    </button>
                    </div>
                </div>
            )}

            {/* Taskbar */}
            <div className="absolute bottom-0 w-full h-10 sm:h-12 md:h-14 bg-white/80 backdrop-blur-xl border-t border-slate-200/60 flex justify-between items-center px-1.5 sm:px-2 md:px-3 z-[50] shadow-[0_-4px_20px_rgba(0,0,0,0.02)]">
                <div className="flex items-center gap-3 h-full pb-1">
                    <button onClick={(e) => { e.stopPropagation(); setIsStartMenuOpen(!isStartMenuOpen); }}
                        className="flex items-center gap-2.5 px-5 py-2 rounded-xl text-white transition-all duration-300
                        bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-700 hover:to-indigo-700
                        shadow-md shadow-blue-500/20 active:scale-95 border border-white/20">
                        <span className="text-sm border-r border-white/20 pr-2">🐱</span><span className="font-bold tracking-widest text-xs uppercase">Start</span>
                    </button>
                    <div className="w-px h-6 bg-slate-200 mx-1"></div>
                    <div className="flex gap-1.5 ml-1">
                        {windows.map(win => (
                            <button key={win.id} onClick={() => toggleMinimize(win.id)}
                                className={`px-4 py-2 rounded-lg text-xs font-bold max-w-[150px] truncate transition-all duration-300
                                ${activeWindowId === win.id && !minimizedWindows.includes(win.id)
                                    ? 'bg-blue-50 text-blue-700 shadow-sm border border-blue-100'
                                    : 'text-slate-500 hover:bg-slate-100 border border-transparent hover:text-slate-700'}`}>
                                {win.title}
                            </button>
                        ))}
                    </div>
                </div>

                <div className="flex items-center gap-4 px-2 h-full pb-1">
                    {/* Energy */}
                    <div className="flex flex-col items-end mr-2 w-32">
                        <div className="text-[9px] text-slate-500 font-black tracking-widest uppercase flex items-center gap-1.5 mb-1"><Zap size={10} className="text-amber-500" /> STAMINA</div>
                        <div className="w-full h-2 rounded-full overflow-hidden border border-slate-200 bg-slate-100 shadow-inner">
                            <div className={`h-full transition-all duration-500 rounded-full ${energy < 20 ? 'bg-red-500 animate-pulse' : energy < 50 ? 'bg-amber-400' : 'bg-emerald-500'}`}
                                style={{ width: `${energy}%` }} />
                        </div>
                    </div>
                    
                    {/* Status Icons */}
                    <div className="flex gap-2.5">
                        <div className={`flex items-center gap-2 px-3 py-1.5 rounded-lg text-xs font-bold font-mono shadow-sm border
                            ${(simState?.battery_percent || 100) < 20 ? 'bg-red-50 text-red-600 border-red-100' : 'bg-slate-50 text-slate-600 border-slate-200'}`}>
                            <span>{simState?.battery_percent || 100}%</span>
                            {simState?.is_plugged_in ? <BatteryCharging size={14} className="text-emerald-500" /> : <Battery size={14} />}
                        </div>
                        <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-mono font-bold bg-emerald-50 text-emerald-700 border border-emerald-100 shadow-sm">
                            ฿{(simState?.sim_money || currentMoney).toLocaleString()}
                        </div>
                    </div>

                    <div className="w-px h-6 bg-slate-200 mx-1"></div>
                    <div className="flex items-center gap-3 text-slate-500 px-2">
                        <Wifi size={16} className="hover:text-blue-500 transition-colors" />
                        <Volume2 size={16} className="hover:text-blue-500 transition-colors" />
                    </div>
                    <div className="w-px h-6 bg-slate-200 mx-1"></div>
                    
                    {/* Clock & Day */}
                    <div className="flex flex-col items-end justify-center leading-tight px-3 h-full cursor-default min-w-[70px] bg-slate-50 rounded-xl border border-slate-100 py-1 shadow-sm relative overflow-hidden group">
                        <div className={`text-sm font-black font-mono tracking-tight relative z-10 ${
                            gameTime.isNight   ? 'text-indigo-600' :
                            gameTime.isEvening ? 'text-amber-600' :
                            'text-blue-600'
                        }`}>
                            {gameTime.display}
                            <span className="ml-1 opacity-80 text-xs">
                                {gameTime.isNight ? '🌙' : gameTime.isEvening ? '🌆' : '☀️'}
                            </span>
                        </div>
                        <div className="text-[9px] font-bold text-slate-400 font-mono tracking-widest relative z-10">DAY {day}</div>
                        
                        {/* Interactive Clock Background based on progress */}
                        <div className="absolute top-0 left-0 h-full bg-blue-100/50 transition-all duration-[3000ms] ease-linear z-0" 
                            style={{ width: `${gameTime.progress}%`, opacity: 0.5 }}></div>
                    </div>
                </div>
            </div>
            </div>
                <div className="mx-auto mt-3 h-3 w-[28%] max-w-[280px] rounded-full bg-slate-700/70"></div>
            </div>
            </div>
            </div>
        </div>
    );
}

function MenuButton({ icon, label, onClick, primary, danger }) {
    let base = "w-full flex items-center gap-4 px-5 py-3.5 rounded-2xl font-bold transition-all duration-300 text-sm active:scale-[0.98] ";
    if (primary) base += "bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-700 hover:to-indigo-700 text-white shadow-lg shadow-blue-500/30";
    else if (danger) base += "bg-red-50 hover:bg-red-100 text-red-600 border border-red-100 hover:border-red-200";
    else base += "bg-slate-50 hover:bg-slate-100 text-slate-700 border border-slate-200 hover:border-slate-300 shadow-sm";
    return <button onClick={onClick} className={base}>{icon} {label}</button>;
}


