import 'package:flutter/material.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkBg = Color(0xFF0D1B2A);
    const Color cardBg = Color(0xFF1B263B);
    const Color primaryCyan = Color(0xFF00C2D1);

    return Scaffold(
      backgroundColor: darkBg,
      bottomNavigationBar: _buildBottomNav(primaryCyan),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: cardBg,
                        child: Icon(Icons.person, color: Colors.white70),
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3D2C22),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text('10 Day Streak',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.notifications_none, color: Colors.white70),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()),
                          );
                        },
                        child: const Icon(Icons.logout, color: Colors.redAccent, size: 22),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),

              // Saldo Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient:
                      const LinearGradient(colors: [cardBg, Color(0xFF0D1B2A)]),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('SALDO SAAT INI',
                        style: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            letterSpacing: 1)),
                    const SizedBox(height: 8),
                    const Text('Rp 2.450.000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text('⤴ 15% dari bulan lalu',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 10)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // --- BAGIAN BARU: QUICK INPUT (Voice & Plus/Minus) ---
              Row(
                children: [
                  // Input Bar
                  Expanded(
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: cardBg.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Ketik / sebut pengeluaran...',
                              style: TextStyle(color: Colors.white24, fontSize: 13),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: primaryCyan.withOpacity(0.1),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: primaryCyan.withOpacity(0.1),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: const Icon(Icons.mic, color: primaryCyan, size: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Buttons Column
                  Column(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: primaryCyan,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.add, color: darkBg),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 45,
                        height: 30,
                        decoration: BoxDecoration(
                          color: cardBg,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.remove, color: Colors.white38, size: 20),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              // -----------------------------------------------------

              // Survival Status Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: cardBg.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('STATUS SURVIVAL',
                            style: TextStyle(color: Colors.white38, fontSize: 10)),
                        Icon(Icons.hourglass_bottom,
                            color: Colors.orangeAccent, size: 18),
                      ],
                    ),
                    const Text('Sisa Rp 450.000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(
                      value: 0.4,
                      backgroundColor: Colors.white10,
                      color: Colors.redAccent.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('15 hari tersisa',
                            style: TextStyle(color: Colors.white38, fontSize: 10)),
                        Text('Batas: Rp 30.000/hari',
                            style: TextStyle(color: Colors.white38, fontSize: 10)),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Tips Hemat Card
              _buildTipsCard(),
              const SizedBox(height: 30),

              // Recent Activity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Aktivitas Terakhir',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: const Text('LIHAT SEMUA',
                          style: TextStyle(color: primaryCyan, fontSize: 12))),
                ],
              ),
              _buildTransactionItem('Nasi Goreng Kambing', 'Hari ini, 19:20',
                  '- Rp 25.000', Colors.redAccent),
              _buildTransactionItem('Transfer Masuk', 'Kemarin, 10:00',
                  '+ Rp 500.000', Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionItem(
      String title, String date, String amount, Color amountColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xFF1B263B).withOpacity(0.3),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF0D1B2A),
                    borderRadius: BorderRadius.circular(12)),
                child: const Icon(Icons.receipt_long, color: Colors.white54),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(date,
                      style: const TextStyle(color: Colors.white38, fontSize: 12)),
                ],
              ),
            ],
          ),
          Text(amount,
              style: TextStyle(color: amountColor, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildTipsCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1B263B), // Dark navy
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF00C2D1).withOpacity(0.2), // Lighter cyan circle
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.lightbulb_outline, color: Color(0xFF00C2D1), size: 16),
              ),
              const SizedBox(width: 10),
              const Text(
                'TIPS HEMAT',
                style: TextStyle(
                  color: Color(0xFF00C2D1),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Content
          const Text(
            'Batasi checkout e-commerce minggu ini!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          // Footer
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 24,
                child: Stack(
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav(Color activeColor) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: const BoxDecoration(
          color: Color(0xFF0D1B2A),
          border: Border(top: BorderSide(color: Colors.white10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Active Glowing Home Icon
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: activeColor.withOpacity(0.15),
                boxShadow: [
                  BoxShadow(
                    color: activeColor.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Icon(Icons.home_filled, color: activeColor),
            ),
            // Inactive Icons
            const Icon(Icons.receipt_long, color: Colors.white38),
            const Icon(Icons.track_changes, color: Colors.white38), // Radar/Target
            const Icon(Icons.bar_chart_rounded, color: Colors.white38),
            const Icon(Icons.settings_outlined, color: Colors.white38),
          ],
        ),
      ),
    );
  }
}