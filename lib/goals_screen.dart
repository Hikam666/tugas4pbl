import 'package:flutter/material.dart';
import 'app_theme.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
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
              const SizedBox(height: 20),

              // Title
              const Text(
                'Targets & Bills',
                style: TextStyle(
              color: AppColors.text,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5,
                ),
              ),
              const Text(
                'FINANCIAL CONTROL CENTER',
                style: TextStyle(
              color: AppColors.muted,
                  fontSize: 10,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),

              // Stats Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                    color: AppColors.surface,
                        borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.border),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('SAVED TODAY',
                              style: TextStyle(
                              color: AppColors.muted,
                                  fontSize: 9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 6),
                          Text('Rp 125.000',
                              style: TextStyle(
                              color: AppColors.cyan,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                    color: AppColors.surface,
                        borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.border),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('UPCOMING BILLS',
                              style: TextStyle(
                              color: AppColors.muted,
                                  fontSize: 9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 6),
                          Text('3 Active',
                              style: TextStyle(
                          color: AppColors.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Tabungan Impian Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Tabungan Impian (Wishlist)',
                          style: TextStyle(
                          color: AppColors.text,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Text('Visualize your future gear.',
                          style: TextStyle(
                          color: AppColors.muted, fontSize: 11)),
                    ],
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00C2D1).withOpacity(0.15),
                      shape: BoxShape.circle,
                  border: Border.all(color: AppColors.cyanBdr),
                    ),
                    child: const Icon(Icons.add,
                    color: AppColors.cyan, size: 16),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // TWS Sony Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
              color: AppColors.surface,
                  borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                        color: AppColors.surface2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.headphones,
                          color: AppColors.cyan, size: 20),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('TWS Sony WH-1000XM5',
                                  style: TextStyle(
                                  color: AppColors.text,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                              Text('60% Completed',
                                  style: TextStyle(
                                  color: AppColors.cyan,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert,
                        color: AppColors.muted, size: 18),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 0.60,
                    backgroundColor: AppColors.border,
                    valueColor: const AlwaysStoppedAnimation<Color>(AppColors.cyan),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('RP 1.800.000',
                        style: TextStyle(color: AppColors.muted, fontSize: 11)),
                        Text('TARGET: RP 3.000.000',
                        style: TextStyle(color: AppColors.muted, fontSize: 11)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                    color: AppColors.cyanBg,
                        borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.cyanBdr),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.tips_and_updates_outlined,
                          color: AppColors.cyan, size: 14),
                          SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              'Simulasi: Stop nongkrong 30 hari untuk mencapai target lebih cepat!',
                          style: TextStyle(color: AppColors.cyan, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // iPhone 16 Pro Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
              color: AppColors.surface,
                  borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                        color: AppColors.surface2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.phone_iphone,
                          color: AppColors.muted, size: 20),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('iPhone 16 Pro',
                                  style: TextStyle(
                          color: AppColors.text,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                              Text('25% Progress',
                                  style: TextStyle(
                                  color: AppColors.muted,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert,
                        color: AppColors.muted, size: 18),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 0.25,
                    backgroundColor: AppColors.border,
                    valueColor: const AlwaysStoppedAnimation<Color>(AppColors.muted),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('RP 4.500.000',
                        style: TextStyle(color: AppColors.muted, fontSize: 11)),
                        Text('RP 18.000.000',
                        style: TextStyle(color: AppColors.muted, fontSize: 11)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Radar Langganan Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Radar Langganan',
                          style: TextStyle(
                              color: AppColors.text,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Text('(Active Bills)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      Text('Automated tracking for recurring costs.',
                          style: TextStyle(
                          color: AppColors.muted, fontSize: 11)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: const Text(
                      'EDIT\nSUBSCRIPTIONS',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                      color: AppColors.cyan,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          height: 1.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Subscription Items
              Container(
                decoration: BoxDecoration(
              color: AppColors.surface,
                  borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  children: [
                    _buildSubscriptionItem(
                      icon: Icons.music_note,
                      iconColor: const Color(0xFF1DB954),
                      iconBg: const Color(0xFF0A1F0F),
                      title: 'Spotify Premium',
                      subtitle: 'BESOK',
                  subtitleColor: AppColors.warm,
                      amount: 'Rp 54.900',
                      amountSub: 'MONTHLY',
                      showDivider: true,
                    ),
                    _buildSubscriptionItem(
                      icon: Icons.movie_outlined,
                      iconColor: const Color(0xFFE50914),
                      iconBg: const Color(0xFF1F0A0A),
                      title: 'Netflix Basic',
                      subtitle: '5 hari lagi',
                  subtitleColor: AppColors.muted,
                      amount: 'Rp 65.000',
                      amountSub: 'AUTOMATIC',
                      showDivider: true,
                    ),
                    _buildSubscriptionItem(
                      icon: Icons.signal_cellular_alt,
                  iconColor: AppColors.cyan,
                      iconBg: const Color(0xFF0A2218),
                      title: 'Paket Data',
                      subtitle: '12 April',
                  subtitleColor: AppColors.muted,
                      amount: 'Rp 100.000',
                      amountSub: 'MANUAL PAY',
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Streak Pulse Banner
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
              color: AppColors.surface,
                  borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.cyanBdr, width: 1),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                    color: AppColors.warmBg,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.local_fire_department,
                      color: AppColors.warm, size: 22),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Streak Pulse',
                          style: TextStyle(
                              color: AppColors.text,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Text('12 Days Saving Streak!',
                          style: TextStyle(color: AppColors.muted, fontSize: 11)),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right,
                    color: AppColors.cyan, size: 22),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubscriptionItem({
    required IconData icon,
    required Color iconColor,
    required Color iconBg,
    required String title,
    required String subtitle,
    required Color subtitleColor,
    required String amount,
    required String amountSub,
    required bool showDivider,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: iconColor, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                    style: const TextStyle(
                        color: AppColors.text,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 2),
                    Text(subtitle,
                        style: TextStyle(
                            color: subtitleColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(amount,
                  style: const TextStyle(
                      color: AppColors.text,
                          fontSize: 13,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 2),
                  Text(amountSub,
                      style: const TextStyle(
                      color: AppColors.muted,
                          fontSize: 9,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ],
          ),
        ),
        if (showDivider)
          const Divider(
              height: 1,
              thickness: 1,
          color: AppColors.border,
              indent: 16,
              endIndent: 16),
      ],
    );
  }
}