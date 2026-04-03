import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bg = AppColors.bg;
    const card = AppColors.surface;
    const cyan = AppColors.cyan;

    return Scaffold(
      backgroundColor: bg,
      resizeToAvoidBottomInset: true,
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
                      const Icon(Icons.notifications_none,
                      color: AppColors.text),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// ===== WARNING =====
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
              color: AppColors.surface2,
                  borderRadius: BorderRadius.circular(16),
              border: const Border(
                left: BorderSide(color: AppColors.warm, width: 3),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.warning_amber_rounded,
                    color: AppColors.warm),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Pengeluaran mendekati batas harian",
                    style: TextStyle(color: AppColors.warm, fontSize: 13, fontWeight: FontWeight.w500),
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
                  AppColors.cyan.withValues(alpha: 0.18),
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
                        color: AppColors.muted,
                            fontSize: 10,
                            letterSpacing: 1)),
                    SizedBox(height: 8),
                    Text("Rp 2.450.000",
                    style: TextStyle(
                        color: AppColors.text,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.trending_up,
                        color: AppColors.success, size: 16),
                        SizedBox(width: 6),
                        Text("15%",
                            style: TextStyle(
                            color: AppColors.success,
                                fontSize: 12)),
                        SizedBox(width: 10),
                        Text("dari bulan lalu",
                            style: TextStyle(
                            color: AppColors.muted, fontSize: 12)),
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
                      height: 54,
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

                          const Icon(Icons.mic, color: cyan),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Row(
                    children: [
                      _actionBtn(Icons.add, true),
                      const SizedBox(width: 8),
                      _actionBtn(Icons.remove, false),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// ===== SURVIVAL =====
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
              color: AppColors.surface,
                  borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("STATUS SURVIVAL",
                        style: TextStyle(
                            color: AppColors.muted, fontSize: 10)),
                        Icon(Icons.hourglass_bottom,
                        color: AppColors.warm),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text("Sisa Rp 450.000",
                        style: TextStyle(
                        color: AppColors.text,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(
                  value: 0.4,
                  color: AppColors.warm,
                  backgroundColor: AppColors.border,
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("15 hari tersisa",
                            style: TextStyle(
                            color: AppColors.muted, fontSize: 10)),
                        Text("Rp 30.000/hari",
                        style: TextStyle(
                            color: AppColors.muted, fontSize: 10)),
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
                      color: AppColors.text,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                      ],
                    )
                ),

              const SizedBox(height: 24),

              /// ===== ACTIVITY =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Aktivitas Terakhir",
                  style: TextStyle(
                      color: AppColors.text,
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
              AppColors.success),
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
      color: primary ? AppColors.cyan : AppColors.surface2,
          borderRadius: BorderRadius.circular(14),
          boxShadow: primary
              ? [
              BoxShadow(
                color: AppColors.cyanGlow,
                    blurRadius: 10,
                  )
                ]
              : [],
        ),
        child: Icon(icon,
        color: primary ? Colors.black : AppColors.muted),
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
      border: Border.all(color: AppColors.bg, width: 2),
        ),
      ),
    );
  }

  static Widget _item(String title, String amount, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
    color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Text(title, style: const TextStyle(color: AppColors.text)),
          Text(amount,
              style:
                  TextStyle(color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}