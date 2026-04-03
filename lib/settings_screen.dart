import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'app_theme.dart';
import 'login.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Top Bar ──────────────────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.surface2,
                        child: Icon(Icons.person, color: AppColors.muted),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppColors.warmBg,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.local_fire_department,
                                color: AppColors.warm, size: 14),
                            SizedBox(width: 6),
                            Text("14 Day Streak",
                                style: TextStyle(
                                    color: AppColors.warm, fontSize: 11, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.notifications_none, color: AppColors.text),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 32),

              // ── Title ─────────────────────────────────────────────
              Text('SETTINGS',
                  style: AppText.lora(
                      size: 30,
                      weight: FontWeight.w800,
                      color: AppColors.text,
                      letterSpacing: 2)),
              const SizedBox(height: 4),
              Text('APP PREFERENCES & SECURITY',
                  style: AppText.dm(
                      size: 11,
                      color: AppColors.muted,
                      letterSpacing: 1.2)),
              const SizedBox(height: 28),

              // ── Profile Card ──────────────────────────────────────
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.surface2,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: AppColors.cyanBdr),
                      ),
                      child: const Icon(Icons.person_outline,
                          color: AppColors.cyan, size: 26),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hikam',
                              style: AppText.dm(
                                  size: 16,
                                  weight: FontWeight.w700,
                                  color: AppColors.text)),
                          const SizedBox(height: 2),
                          Text('Hikam@gmail.com',
                              style: AppText.dm(
                                  size: 12, color: AppColors.muted)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.cyanBg,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.cyanBdr),
                      ),
                      child: Text('PRO\nPLAN',
                          textAlign: TextAlign.center,
                          style: AppText.dm(
                              size: 9,
                              weight: FontWeight.w800,
                              color: AppColors.cyan,
                              letterSpacing: 0.5)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              // ── Section: PERSONAL ─────────────────────────────────
              _buildSectionLabel('PERSONAL'),
              const SizedBox(height: 10),
              _buildMenuTile(
                icon: Icons.person_outline,
                label: 'Account',
                onTap: () {},
              ),
              const SizedBox(height: 8),
              _buildMenuTile(
                icon: Icons.shield_outlined,
                label: 'Security',
                onTap: () {},
              ),
              const SizedBox(height: 24),

              // ── Section: APP EXPERIENCE ───────────────────────────
              _buildSectionLabel('APP EXPERIENCE'),
              const SizedBox(height: 10),
              _buildMenuTile(
                icon: Icons.notifications_outlined,
                label: 'Notifications',
                onTap: () {},
              ),
              const SizedBox(height: 8),
              _buildToggleTile(
                icon: Icons.dark_mode_outlined,
                label: 'Dark Mode',
                subtitle: 'ALWAYS ON',
                value: _darkMode,
                onChanged: (v) => setState(() => _darkMode = v),
              ),
              const SizedBox(height: 24),

              // ── Section: SUPPORT ──────────────────────────────────
              _buildSectionLabel('SUPPORT'),
              const SizedBox(height: 10),
              _buildMenuTile(
                icon: Icons.help_outline_rounded,
                label: 'Help & Support',
                onTap: () {},
              ),
              const SizedBox(height: 32),

              // ── Log Out Button ────────────────────────────────────
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.dangerBg,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0x33E07070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.logout_rounded,
                          color: AppColors.danger, size: 18),
                      const SizedBox(width: 8),
                      Text('Log Out',
                          style: AppText.dm(
                              size: 15,
                              weight: FontWeight.w700,
                              color: AppColors.danger)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // ── Version ───────────────────────────────────────────
              Center(
                child: Text('MONEY TRACKER V4.2.0',
                  style: AppText.dm(
                    size: 10,
                    color: AppColors.subtle,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  // ── Helpers ─────────────────────────────────────────────────────

  Widget _buildSectionLabel(String label) {
    return Text(label,
        style: AppText.dm(
            size: 11,
            weight: FontWeight.w600,
            color: AppColors.muted,
            letterSpacing: 1.4));
  }

  Widget _buildMenuTile({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.cyanBg,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: AppColors.cyan, size: 18),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(label,
                  style: AppText.dm(
                      size: 15,
                      weight: FontWeight.w500,
                      color: AppColors.text)),
            ),
            const Icon(Icons.chevron_right_rounded,
                color: AppColors.muted, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleTile({
    required IconData icon,
    required String label,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.cyanBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: AppColors.cyan, size: 18),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: AppText.dm(
                        size: 15,
                        weight: FontWeight.w500,
                        color: AppColors.text)),
                Text(subtitle,
                    style: AppText.dm(
                        size: 10,
                        color: AppColors.cyan,
                        letterSpacing: 0.8)),
              ],
            ),
          ),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.cyan,
            trackColor: AppColors.subtle,
          ),
        ],
      ),
    );
  }
}