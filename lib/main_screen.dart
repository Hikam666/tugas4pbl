import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'goals_screen.dart';
import 'settings_screen.dart';
import 'app_theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Daftar halaman untuk setiap tab di navbar
  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text('Receipts', style: TextStyle(color: AppColors.text))),
    const GoalsScreen(),
    const Center(child: Text('Stats', style: TextStyle(color: AppColors.text))),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      // IndexedStack menahan state layar agar tidak ter-reset saat berpindah tab
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBottomNav() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: const BoxDecoration(
          color: AppColors.bg,
          border: Border(top: BorderSide(color: AppColors.border)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(Icons.home_filled, 0),
            _buildNavItem(Icons.receipt_long, 1),
            _buildNavItem(Icons.track_changes, 2, isCenter: true),
            _buildNavItem(Icons.bar_chart_rounded, 3),
            _buildNavItem(Icons.settings_outlined, 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, {bool isCenter = false}) {
    final isActive = _selectedIndex == index;
    final color = isActive ? AppColors.cyan : AppColors.muted;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (isCenter && isActive) 
              ? AppColors.cyanBg 
              : Colors.transparent,
          gradient: (!isCenter && isActive) ? RadialGradient(
            colors: [AppColors.cyanGlow, Colors.transparent],
          ) : null,
          boxShadow: (isCenter && isActive) ? [
            BoxShadow(
              color: AppColors.cyanBdr,
              blurRadius: 15, spreadRadius: 2,
            ),
          ] : [],
        ),
        child: Icon(icon, color: color),
      ),
    );
  }
}