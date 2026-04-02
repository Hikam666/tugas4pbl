import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = true;
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF09121C), 
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFF15202B), 
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color(0xFF212E3B)), 
                        ),
                        child: const Center(
                          child: Text('L',
                              style: TextStyle(
                                  color: Color(0xFF4FD1C5), 
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('Lumina',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF15202B), 
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.local_fire_department,
                            color: Color(0xFFFF8A65), size: 14), 
                        SizedBox(width: 4),
                        Text('12',
                            style: TextStyle(
                                color: Color(0xFFFF8A65), 
                                fontSize: 11,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // Title
              const Text(
                'SETTINGS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              ),
              const Text(
                'APP PREFERENCES & SECURITY',
                style: TextStyle(
                  color: Color(0xFF718096), 
                  fontSize: 11,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 24),

              // Profile Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF15202B), 
                  borderRadius: BorderRadius.circular(14),
                  border:
                      Border.all(color: const Color(0xFF212E3B), width: 1), 
                ),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A2633), 
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xFF4FD1C5).withOpacity(0.3), // Diganti
                            width: 1.5),
                      ),
                      child: const Icon(Icons.person,
                          color: Color(0xFF4FD1C5), size: 22), 
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Aley Rivera',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(height: 2),
                          Text('alex.rivera@lumina.io',
                              style: TextStyle(
                                  color: Color(0xFF718096), fontSize: 12)), 
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4FD1C5).withOpacity(0.1), 
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: const Color(0xFF4FD1C5).withOpacity(0.4)), 
                      ),
                      child: const Text(
                        'PRO\nPLAN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4FD1C5),
                          fontSize: 8,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // PERSONAL Section
              const Text('PERSONAL',
                  style: TextStyle(
                      color: Color(0xFF718096), 
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF15202B), // Diganti
                  borderRadius: BorderRadius.circular(14),
                  border:
                      Border.all(color: const Color(0xFF212E3B), width: 1), 
                ),
                child: Column(
                  children: [
                    _buildMenuItem(
                      icon: Icons.person_outline,
                      iconColor: const Color(0xFF4FD1C5), 
                      title: 'Account',
                      showDivider: true,
                    ),
                    _buildMenuItem(
                      icon: Icons.shield_outlined,
                      iconColor: const Color(0xFF4FD1C5), 
                      title: 'Security',
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // APP EXPERIENCE Section
              const Text('APP EXPERIENCE',
                  style: TextStyle(
                      color: Color(0xFF718096), 
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF15202B), 
                  borderRadius: BorderRadius.circular(14),
                  border:
                      Border.all(color: const Color(0xFF212E3B), width: 1), 
                ),
                child: Column(
                  children: [
                    _buildMenuItem(
                      icon: Icons.notifications_outlined,
                      iconColor: const Color(0xFF4FD1C5), 
                      title: 'Notifications',
                      showDivider: true,
                    ),
                    // Dark Mode toggle
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      child: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1A2633), 
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.dark_mode_outlined,
                                color: Color(0xFF4FD1C5), size: 18), 
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Dark Mode',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                Text('ALWAYS ON',
                                    style: TextStyle(
                                        color: Color(0xFF4FD1C5), 
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1)),
                              ],
                            ),
                          ),
                          Switch(
                            value: _darkMode,
                            onChanged: (val) =>
                                setState(() => _darkMode = val),
                            activeColor: const Color(0xFF4FD1C5), 
                            activeTrackColor:
                                const Color(0xFF4FD1C5).withOpacity(0.3), 
                            inactiveThumbColor: const Color(0xFF718096), 
                            inactiveTrackColor: const Color(0xFF212E3B), 
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // SUPPORT Section
              const Text('SUPPORT',
                  style: TextStyle(
                      color: Color(0xFF718096), 
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF15202B), 
                  borderRadius: BorderRadius.circular(14),
                  border:
                      Border.all(color: const Color(0xFF212E3B), width: 1), 
                ),
                child: _buildMenuItem(
                  icon: Icons.help_outline,
                  iconColor: const Color(0xFF4FD1C5), 
                  title: 'Help & Support',
                  showDivider: false,
                ),
              ),
              const SizedBox(height: 24),

              // Log Out Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: const Color(0xFF4FD1C5).withOpacity(0.5), width: 1.5), 
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  icon: const Icon(Icons.logout,
                      color: Color(0xFFF87171), size: 18), 
                  label: const Text('Log Out',
                      style: TextStyle(
                          color: Color(0xFFF87171), 
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              const SizedBox(height: 20),

              // Version
              const Center(
                child: Text(
                  'LUMINA V4.2.0-ASTRA',
                  style: TextStyle(
                      color: Color(0xFF2D3748), 
                      fontSize: 10,
                      letterSpacing: 1.5),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),

      // Bottom Nav
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF09121C), 
          border:
              Border(top: BorderSide(color: Color(0xFF212E3B), width: 1)), 
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex = i),
          backgroundColor: Colors.transparent,
          selectedItemColor: const Color(0xFF4FD1C5), 
          unselectedItemColor: const Color(0xFF718096), 
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined),
                activeIcon: Icon(Icons.bar_chart),
                label: 'Stats'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                activeIcon: Icon(Icons.add_circle),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_outlined),
                activeIcon: Icon(Icons.download),
                label: 'Download'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                activeIcon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required bool showDivider,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A2633), 
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, color: iconColor, size: 18),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
                const Icon(Icons.chevron_right,
                    color: Color(0xFF718096), size: 20),
              ],
            ),
          ),
        ),
        if (showDivider)
          const Divider(
              height: 1, thickness: 1, color: Color(0xFF212E3B), 
              indent: 16, endIndent: 16),
      ],
    );
  }
}