import 'package:flutter/material.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bg = Color(0xFF0D1B2A);
    const card = Color(0xFF1B263B);
    const cyan = Color(0xFF00C2D1);

    return Scaffold(
      backgroundColor: bg,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: _bottomNav(cyan),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ===== HEADER =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: card,
                        child: Icon(Icons.person, color: Colors.white70),
                      ),
                      SizedBox(width: 12),
                      Text("Lumina",
                          style: TextStyle(
                              color: cyan,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xFF3D2C22),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.local_fire_department,
                                color: Colors.orange, size: 14),
                            SizedBox(width: 6),
                            Text("14 Day Streak",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 11)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.notifications_none,
                          color: Colors.white70),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// ===== WARNING =====
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF2A2F45),
                  borderRadius: BorderRadius.circular(16),
                  border: Border(
                    left: BorderSide(color: Colors.orange, width: 3),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.warning_amber_rounded,
                        color: Colors.orangeAccent),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Pengeluaran mendekati batas harian",
                        style: TextStyle(
                            color: Colors.orangeAccent, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// ===== SALDO =====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFF1B263B), 
                ),
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: RadialGradient(
                    center: Alignment.topRight, 
                    radius: 1.2,
                    colors: [
                      const Color(0xFF00C2D1).withValues(alpha: 0.18),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 1.0],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("SALDO SAAT INI",
                        style: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            letterSpacing: 1)),
                    SizedBox(height: 8),
                    Text("Rp 2.450.000",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.trending_up,
                            color: Colors.greenAccent, size: 16),
                        SizedBox(width: 6),
                        Text("15%",
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 12)),
                        SizedBox(width: 10),
                        Text("dari bulan lalu",
                            style: TextStyle(
                                color: Colors.white38, fontSize: 12)),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// ===== INPUT + BUTTON =====
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: card.withValues(alpha: 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Ketik / sebut pengeluaran...",
                              style: TextStyle(color: Colors.white24),
                            ),
                          ),

                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            splashColor: Colors.white10,
                            highlightColor: Colors.white10,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  colors: [
                                    cyan.withValues(alpha: 0.4),
                                    Colors.transparent,
                                  ],
                                  radius: 0.8,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: cyan.withValues(alpha: 0.15),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: cyan.withValues(alpha: 0.6),
                                      blurRadius: 12,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: const Icon(Icons.mic,
                                    color: Color(0xFF00C2D1)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _actionBtn(Icons.add, true),
                        _actionBtn(Icons.remove, false),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// ===== SURVIVAL =====
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: card.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("STATUS SURVIVAL",
                            style: TextStyle(
                                color: Colors.white38, fontSize: 10)),
                        Icon(Icons.hourglass_bottom,
                            color: Colors.orangeAccent),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text("Sisa Rp 450.000",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(
                      value: 0.4,
                      color: Colors.orangeAccent,
                      backgroundColor: Colors.white10,
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("15 hari tersisa",
                            style: TextStyle(
                                color: Colors.white38, fontSize: 10)),
                        Text("Rp 30.000/hari",
                            style: TextStyle(
                                color: Colors.white38, fontSize: 10)),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// ===== TIPS =====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: card,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.lightbulb_outline,
                            color: cyan, size: 18),
                        SizedBox(width: 8),
                        Text("TIPS HEMAT",
                            style: TextStyle(color: cyan, fontSize: 12)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Batasi checkout e-commerce minggu ini!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                          height: 26,
                          child: Stack(
                            children: [
                              _avatar(0),
                              _avatar(15),
                              _avatar(30),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("320 mengikuti",
                            style: TextStyle(
                                color: Colors.white38, fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// ===== ACTIVITY =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Aktivitas Terakhir",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text("LIHAT SEMUA",
                      style: TextStyle(color: cyan, fontSize: 12)),
                ],
              ),

              const SizedBox(height: 16),

              _item("Nasi Goreng Kambing", "- Rp 25.000",
                  Colors.redAccent),
              _item("Transfer Masuk", "+ Rp 500.000",
                  Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _actionBtn(IconData icon, bool primary) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {},
      splashColor: Colors.white10,
      highlightColor: Colors.white10,
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          color: primary ? const Color(0xFF00C2D1) : const Color(0xFF1B263B),
          borderRadius: BorderRadius.circular(14),
          boxShadow: primary
              ? [
                  BoxShadow(
                    color: const Color(0xFF00C2D1).withOpacity(0.4),
                    blurRadius: 10,
                  )
                ]
              : [],
        ),
        child: Icon(icon,
            color: primary ? Colors.black : Colors.white38),
      ),
    );
  }

  static Widget _avatar(double left) {
    return Positioned(
      left: left,
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
          border: Border.all(color: Color(0xFF0D1B2A), width: 2),
        ),
      ),
    );
  }

  static Widget _item(String title, String amount, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1B263B).withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.white)),
          Text(amount,
              style:
                  TextStyle(color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  static Widget _bottomNav(Color active) {
    return SafeArea(
      child: Container(
        padding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: const BoxDecoration(
          color: Color(0xFF0D1B2A),
          border: Border(top: BorderSide(color: Colors.white10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    active.withOpacity(0.4),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Icon(Icons.home, color: active),
            ),
            const Icon(Icons.receipt_long, color: Colors.white38),
            const Icon(Icons.track_changes, color: Colors.white38),
            const Icon(Icons.bar_chart, color: Colors.white38),
            const Icon(Icons.settings, color: Colors.white38),
          ],
        ),
      ),
    );
  }
}