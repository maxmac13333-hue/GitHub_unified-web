import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Monitor, Globe, Settings, Trophy, Palette, BookOpen } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { useTheme } from '../contexts/ThemeContext';
import SettingsModal from '../components/SettingsModal';

export default function MainMenu({ user }) {
  const navigate = useNavigate();
  const { theme, setTheme, themes } = useTheme();
  const { t } = useTranslation();
  const [mounted, setMounted] = useState(false);
  const [showThemePicker, setShowThemePicker] = useState(false);
  const [showSettingsModal, setShowSettingsModal] = useState(false);
  const [volume, setVolume] = useState(localStorage.getItem('musicVolume') || 50);
  const [storedUser, setStoredUser] = useState(() => {
    try {
      return JSON.parse(localStorage.getItem('user') || 'null');
    } catch {
      return null;
    }
  });

  useEffect(() => {
    const timer = setTimeout(() => setMounted(true), 100);
    return () => clearTimeout(timer);
  }, []);

  useEffect(() => {
    if (user) {
      setStoredUser(user);
      return;
    }

    try {
      setStoredUser(JSON.parse(localStorage.getItem('user') || 'null'));
    } catch {
      setStoredUser(null);
    }
  }, [user]);

  const resolvedUser = user || storedUser;
  const displayName = resolvedUser?.username || 'Guest User';
  const displayLevel = Number(resolvedUser?.level || 1);
  const profileLabel = resolvedUser?.isGuest ? 'บัญชีผู้เยี่ยมชม' : 'บัญชีผู้เล่น';

  const menus = [
    {
      name: t('mainMenu.simulation'),
      sub: 'Initialize Local Environment',
      icon: <Monitor size={24} />,
      color: 'python-gradient',
      action: () => navigate('/simulation'),
    },
    {
      name: t('mainMenu.online'),
      sub: 'Collaborative Logic',
      icon: <Globe size={24} />,
      color: 'bg-gradient-to-br from-pysim-primary to-pysim-primary-container',
      action: () => navigate('/online'),
    },
    {
      name: t('mainMenu.theme'),
      sub: 'Personalize',
      icon: <Palette size={24} />,
      color: 'bg-gradient-to-br from-pysim-tertiary-container to-pysim-tertiary',
      action: () => setShowThemePicker(true),
    },
    {
      name: t('mainMenu.settings'),
      sub: 'Configure Core',
      icon: <Settings size={24} />,
      color: 'bg-gradient-to-br from-pysim-outline to-slate-600',
      action: () => setShowSettingsModal(true),
    },
    {
      name: t('mainMenu.achievements'),
      sub: 'Milestones Met',
      icon: <Trophy size={24} />,
      color: 'bg-gradient-to-br from-pysim-secondary-container to-pysim-secondary',
      action: () => navigate('/achievements'),
    },
    {
      name: t('mainMenu.studyMode'),
      sub: 'The Academy',
      icon: <BookOpen size={24} />,
      color: 'bg-gradient-to-br from-emerald-500 to-green-600',
      action: () => navigate('/learn'),
    },
  ];

  const handleVolumeChange = (nextVolume) => {
    setVolume(nextVolume);
    localStorage.setItem('musicVolume', nextVolume);
    const music = document.getElementById('bg-music');
    if (music) {
      music.volume = nextVolume / 100;
      if (music.paused) music.play().catch(() => {});
    }
  };

  return (
    <div className="min-h-screen relative overflow-y-auto bg-pysim-surface transition-colors duration-300">
      <div className="fixed inset-0 z-0 pointer-events-none overflow-hidden">
        <div className="absolute -top-24 -left-24 h-96 w-96 rounded-full bg-pysim-primary/5 blur-3xl" />
        <div className="absolute top-1/2 -right-48 h-[600px] w-[600px] rounded-full bg-pysim-secondary-container/10 blur-[100px]" />
        <div
          className="absolute inset-0 opacity-[0.03]"
          style={{ backgroundImage: 'radial-gradient(#145d91 1px, transparent 1px)', backgroundSize: '40px 40px' }}
        />
        <div className="absolute bottom-10 left-10 flex flex-col gap-2 font-mono text-xs text-pysim-primary opacity-10">
          <span>def simulate_world():</span>
          <span className="pl-4">while True:</span>
          <span className="pl-8">growth = logic.calculate()</span>
          <span className="pl-8">render(growth)</span>
        </div>
      </div>

      <div className="relative z-10 flex min-h-screen flex-col items-center justify-center px-4 py-8">
        <header
          className={`relative mb-12 flex flex-col items-center space-y-2 transition-all duration-1000 ${
            mounted ? 'translate-y-0 opacity-100' : '-translate-y-8 opacity-0'
          }`}
        >
          <div className="bg-gradient-to-r from-pysim-primary to-pysim-primary-container bg-clip-text text-3xl font-black uppercase tracking-tighter text-transparent">
            PySim OS
          </div>
          <div className="text-[10px] font-bold uppercase tracking-[0.3em] text-pysim-outline opacity-60">
            {t('mainMenu.subtitle') || 'The Living Manuscript Edition'}
          </div>
        </header>

        <div className="w-full max-w-lg">
          <div className="relative flex flex-col space-y-6 rounded-2xl border border-pysim-outline-variant/10 bg-white p-8 whisper-shadow">
            <div className="mb-2 flex items-center justify-between">
              <div className="flex items-center space-x-3">
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-pysim-surface-high">
                  <Monitor size={20} className="text-pysim-primary" />
                </div>
                <div>
                  <p className="text-[10px] font-bold uppercase tracking-wider text-pysim-outline">{profileLabel}</p>
                  <p className="text-sm font-bold text-pysim-on-surface">{displayName}</p>
                </div>
              </div>
              <div className="flex flex-col items-end">
                <p className="text-[10px] font-bold uppercase tracking-wider text-pysim-outline">ระดับผู้เล่น</p>
                <div className="flex items-center space-x-1">
                  <span className="h-1.5 w-1.5 rounded-full bg-pysim-secondary" />
                  <span className="text-xs font-semibold text-pysim-primary">LV.{displayLevel}</span>
                </div>
              </div>
            </div>

            <nav className="flex flex-col space-y-3">
              <button
                onClick={menus[0].action}
                className={`group relative w-full overflow-hidden rounded-2xl border border-blue-200/70 bg-gradient-to-r from-blue-600 via-blue-500 to-cyan-400 px-7 py-6 text-slate-900 shadow-lg shadow-blue-500/20 transition-all active:scale-[0.98] ${
                  mounted ? 'translate-y-0 opacity-100' : 'translate-y-4 opacity-0'
                }`}
                style={{ transitionDelay: '300ms' }}
              >
                <div className="absolute inset-0 bg-gradient-to-r from-white/25 via-white/5 to-transparent opacity-90" />
                <div className="relative flex items-center justify-between gap-4">
                  <div className="flex items-center gap-5">
                    <div className="flex h-14 w-14 items-center justify-center rounded-2xl bg-white/90 text-blue-700 ring-1 ring-white/60 backdrop-blur-sm shadow-sm">
                      <Monitor size={30} className="opacity-95" />
                    </div>
                    <div className="text-left">
                      <span className="block text-2xl font-black leading-none tracking-tight text-white drop-shadow-sm">{menus[0].name}</span>
                      <span className="mt-2 block text-sm font-semibold text-blue-50">{menus[0].sub}</span>
                    </div>
                  </div>
                  <div className="rounded-full bg-white px-4 py-2 text-xs font-black uppercase tracking-[0.2em] text-blue-700 shadow-sm ring-1 ring-blue-100">
                    Start
                  </div>
                </div>
              </button>

              <div className="grid grid-cols-2 gap-3">
                {menus.slice(1, 5).map((menu, index) => (
                  <button
                    key={menu.name}
                    onClick={menu.action}
                    className={`flex flex-col items-start space-y-3 rounded-lg bg-pysim-surface-low p-5 transition-colors active:scale-[0.98] hover:bg-pysim-surface-high ${
                      mounted ? 'translate-y-0 opacity-100' : 'translate-y-4 opacity-0'
                    }`}
                    style={{ transitionDelay: `${400 + index * 80}ms` }}
                  >
                    <div className={`rounded-lg p-2 text-white ${menu.color}`}>{menu.icon}</div>
                    <div>
                      <span className="block text-sm font-bold text-pysim-on-surface">{menu.name}</span>
                      <span className="text-[10px] text-pysim-outline">{menu.sub}</span>
                    </div>
                  </button>
                ))}
              </div>
            </nav>

            <div className="border-t border-pysim-outline-variant/5 pt-4">
              <button
                onClick={menus[5].action}
                className={`flex w-full items-center justify-center space-x-3 rounded-lg bg-pysim-secondary-container py-4 font-bold text-pysim-on-secondary-container transition-all hover:opacity-90 active:scale-[0.98] ${
                  mounted ? 'translate-y-0 opacity-100' : 'translate-y-4 opacity-0'
                }`}
                style={{ transitionDelay: '750ms' }}
              >
                <BookOpen size={20} />
                <span className="text-sm uppercase tracking-wide">{menus[5].name}</span>
              </button>
            </div>
          </div>

          <div className={`mt-8 flex items-center justify-between px-4 transition-all duration-1000 delay-700 ${mounted ? 'opacity-100' : 'opacity-0'}`}>
            <div className="text-[10px] font-mono text-pysim-outline/50">
              {t('mainMenu.version') || 'BUILD_ID: PS_OS_2024.0.1'}
            </div>
            <div className="text-[10px] font-mono text-pysim-outline/50">{t('mainMenu.copyright') || '© PySim'}</div>
          </div>
        </div>
      </div>

      {showThemePicker ? (
        <div
          className="fixed inset-0 z-50 flex items-center justify-center bg-pysim-on-surface/20 backdrop-blur-sm animate-fade-in"
          onClick={() => setShowThemePicker(false)}
        >
          <div
            className="w-full max-w-sm rounded-2xl border border-pysim-outline-variant/10 bg-white p-6 whisper-shadow animate-scale-in"
            onClick={(event) => event.stopPropagation()}
          >
            <h2 className="mb-1 flex items-center gap-2 text-xl font-black text-pysim-on-surface">
              <Palette size={20} className="text-pysim-primary" /> {t('mainMenu.themeModal.title')}
            </h2>
            <p className="mb-4 text-xs text-pysim-on-surface-variant">{t('mainMenu.themeModal.subtitle')}</p>
            <div className="space-y-2">
              {themes.map((themeItem) => (
                <button
                  key={themeItem.id}
                  onClick={() => {
                    setTheme(themeItem.id);
                    setShowThemePicker(false);
                  }}
                  className={`flex w-full items-center gap-3 rounded-xl border p-3 transition-all duration-200 ${
                    theme.id === themeItem.id
                      ? 'border-pysim-primary/20 bg-pysim-primary-fixed ring-1 ring-pysim-primary/20'
                      : 'border-pysim-outline-variant/10 hover:bg-pysim-surface-low'
                  }`}
                >
                  <span className="text-2xl">{themeItem.icon}</span>
                  <div className="flex-1 text-left">
                    <div className="text-sm font-bold text-pysim-on-surface">{themeItem.name}</div>
                    <div className="text-xs text-pysim-on-surface-variant">{themeItem.description}</div>
                  </div>
                  {theme.id === themeItem.id ? <span className="text-sm text-pysim-primary">✓</span> : null}
                </button>
              ))}
            </div>
            <div className="mt-4 rounded-xl border border-pysim-primary/10 bg-pysim-primary-fixed p-3 text-center">
              <p className="text-xs font-bold text-pysim-primary">{t('mainMenu.themeModal.storeComingSoon')}</p>
              <p className="mt-1 text-[10px] text-pysim-on-surface-variant">{t('mainMenu.themeModal.storeDesc')}</p>
            </div>
          </div>
        </div>
      ) : null}

      <SettingsModal
        open={showSettingsModal}
        onClose={() => setShowSettingsModal(false)}
        volume={volume}
        onVolumeChange={handleVolumeChange}
      />
    </div>
  );
}
