import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
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
                          color: const Color(0xFF1B263B),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color(0xFF00C2D1).withOpacity(0.3)),
                        ),
                        child: const Center(
                          child: Text('L',
                              style: TextStyle(
                                  color: Color(0xFF00C2D1),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3D2C22),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.military_tech,
                            color: Colors.orange, size: 14),
                        SizedBox(width: 4),
                        Text('streak_badge',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 10,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                'Targets & Bills',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5,
                ),
              ),
              const Text(
                'FINANCIAL CONTROL CENTER',
                style: TextStyle(
                  color: Colors.white38,
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
                        color: const Color(0xFF1B263B).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('SAVED TODAY',
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 6),
                          Text('Rp 125.000',
                              style: TextStyle(
                                  color: Color(0xFF00C2D1),
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
                        color: const Color(0xFF1B263B).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('UPCOMING BILLS',
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 6),
                          Text('3 Active',
                              style: TextStyle(
                                  color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Text('Visualize your future gear.',
                          style: TextStyle(
                              color: Colors.white38, fontSize: 11)),
                    ],
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00C2D1).withOpacity(0.15),
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xFF00C2D1).withOpacity(0.4)),
                    ),
                    child: const Icon(Icons.add,
                        color: Color(0xFF00C2D1), size: 16),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // TWS Sony Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B263B).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white10),
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
                            color: const Color(0xFF1B263B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.headphones,
                              color: Color(0xFF00C2D1), size: 20),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('TWS Sony WH-1000XM5',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                              Text('60% Completed',
                                  style: TextStyle(
                                      color: Color(0xFF00C2D1),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: Colors.white38, size: 18),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 0.60,
                        backgroundColor: Colors.white10,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF00C2D1)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('RP 1.800.000',
                            style: TextStyle(
                                color: Colors.white38, fontSize: 11)),
                        Text('TARGET: RP 3.000.000',
                            style: TextStyle(
                                color: Colors.white38, fontSize: 11)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00C2D1).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color(0xFF00C2D1).withOpacity(0.2)),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.tips_and_updates_outlined,
                              color: Color(0xFF00C2D1), size: 14),
                          SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              'Simulasi: Stop nongkrong 30 hari untuk mencapai target lebih cepat!',
                              style: TextStyle(
                                  color: Color(0xFF00C2D1), fontSize: 11),
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
                  color: const Color(0xFF1B263B).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white10),
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
                            color: const Color(0xFF1B263B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.phone_iphone,
                              color: Colors.white38, size: 20),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('iPhone 16 Pro',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                              Text('25% Progress',
                                  style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: Colors.white38, size: 18),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 0.25,
                        backgroundColor: Colors.white10,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.white38),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('RP 4.500.000',
                            style: TextStyle(
                                color: Colors.white38, fontSize: 11)),
                        Text('RP 18.000.000',
                            style: TextStyle(
                                color: Colors.white38, fontSize: 11)),
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
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Text('(Active Bills)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      Text('Automated tracking for recurring costs.',
                          style: TextStyle(
                              color: Colors.white38, fontSize: 11)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: const Text(
                      'EDIT\nSUBSCRIPTIONS',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color(0xFF00C2D1),
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
                  color: const Color(0xFF1B263B).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white10),
                ),
                child: Column(
                  children: [
                    _buildSubscriptionItem(
                      icon: Icons.music_note,
                      iconColor: const Color(0xFF1DB954),
                      iconBg: const Color(0xFF0A1F0F),
                      title: 'Spotify Premium',
                      subtitle: 'BESOK',
                      subtitleColor: Colors.orangeAccent,
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
                      subtitleColor: Colors.white38,
                      amount: 'Rp 65.000',
                      amountSub: 'AUTOMATIC',
                      showDivider: true,
                    ),
                    _buildSubscriptionItem(
                      icon: Icons.signal_cellular_alt,
                      iconColor: const Color(0xFF00C2D1),
                      iconBg: const Color(0xFF0A2218),
                      title: 'Paket Data',
                      subtitle: '12 April',
                      subtitleColor: Colors.white38,
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
                  color: const Color(0xFF1B263B).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: const Color(0xFF00C2D1).withOpacity(0.3),
                      width: 1),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3D2C22),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.local_fire_department,
                          color: Colors.orangeAccent, size: 22),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Streak Pulse',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Text('12 Days Saving Streak!',
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 11)),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right,
                        color: Color(0xFF00C2D1), size: 22),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),

      // Bottom Nav — sama persis dengan home_screen
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          decoration: const BoxDecoration(
            color: Color(0xFF0D1B2A),
            border: Border(top: BorderSide(color: Colors.white10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.home_filled, color: Colors.white38),
              const Icon(Icons.receipt_long, color: Colors.white38),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF00C2D1).withOpacity(0.15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00C2D1).withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(Icons.track_changes,
                    color: Color(0xFF00C2D1)),
              ),
              const Icon(Icons.bar_chart_rounded, color: Colors.white38),
              const Icon(Icons.settings_outlined, color: Colors.white38),
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
                            color: Colors.white,
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
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 2),
                  Text(amountSub,
                      style: const TextStyle(
                          color: Colors.white38,
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
              color: Colors.white10,
              indent: 16,
              endIndent: 16),
      ],
    );
  }
}