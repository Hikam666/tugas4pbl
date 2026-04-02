import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey        = GlobalKey<FormState>();
  final _emailCtrl      = TextEditingController();
  final _passwordCtrl   = TextEditingController();
  bool _obscure         = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  void _login() {
    if (!_formKey.currentState!.validate()) return;

    if (_emailCtrl.text.trim() == 'pbl4@gmail.com' &&
        _passwordCtrl.text == '12345678') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Email atau password salah.',
            style: AppText.dm(size: 13, color: AppColors.text),
          ),
          backgroundColor: AppColors.surface2,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
    }
  }

  // ─── BUILD ──────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildHeroSection(),
            Expanded(child: _buildFormSection()),
          ],
        ),
      ),
    );
  }

  // ─── HERO ────────────────────────────────────────────────────────────────────

  Widget _buildHeroSection() {
    return Container(
      height: 280,
      width: double.infinity,
      color: AppColors.surface,
      child: Stack(
        children: [
          // Ambient glow top-left
          Positioned(
            top: -60, left: -60,
            child: Container(
              width: 280, height: 280,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x1F3ECFCF), Colors.transparent],
                ),
              ),
            ),
          ),
          // Ambient glow bottom-right
          Positioned(
            bottom: -40, right: -40,
            child: Container(
              width: 200, height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [AppColors.warmGlow, Colors.transparent],
                ),
              ),
            ),
          ),
          // Brand content
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 24, 32, 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _LogoMark(),
                  const SizedBox(height: 16),
                  Text(
                    'Selamat\nDatang Kembali',
                    style: AppText.lora(size: 28),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Lacak, kelola, dan tumbuhkan keuanganmu.',
                    style: AppText.dm(
                      size: 13,
                      color: AppColors.muted,
                      weight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ─── FORM ────────────────────────────────────────────────────────────────────

  Widget _buildFormSection() {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.bg,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(28, 36, 28, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email
            _FieldLabel(label: 'EMAIL'),
            const SizedBox(height: 8),
            _AppTextField(
              controller: _emailCtrl,
              hint: 'nama@email.com',
              prefixIcon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              validator: (v) => (v == null || v.isEmpty) ? 'Masukkan email' : null,
            ),
            const SizedBox(height: 20),

            // Password
            _FieldLabel(label: 'PASSWORD'),
            const SizedBox(height: 8),
            _AppTextField(
              controller: _passwordCtrl,
              hint: '••••••••',
              prefixIcon: Icons.lock_outline,
              obscure: _obscure,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: AppColors.subtle,
                  size: 20,
                ),
                onPressed: () => setState(() => _obscure = !_obscure),
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Masukkan password' : null,
            ),

            // Forgot
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.cyan,
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                ),
                child: Text('Lupa Password?', style: AppText.dm(size: 12, color: AppColors.cyan, weight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 12),

            // Login button
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.cyan,
                  foregroundColor: AppColors.bg,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: Text(
                  'Masuk Sekarang',
                  style: AppText.dm(size: 15, weight: FontWeight.w600, color: AppColors.bg),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Divider
            Row(
              children: [
                const Expanded(child: Divider(color: AppColors.border, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('atau masuk dengan',
                      style: AppText.dm(size: 12, color: AppColors.subtle)),
                ),
                const Expanded(child: Divider(color: AppColors.border, thickness: 1)),
              ],
            ),
            const SizedBox(height: 24),

            // Google
            _GoogleButton(),
            const SizedBox(height: 32),

            // Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum punya akun? ', style: AppText.dm(size: 13, color: AppColors.muted)),
                GestureDetector(
                  onTap: () {},
                  child: Text('Daftar gratis',
                      style: AppText.dm(size: 13, color: AppColors.cyan, weight: FontWeight.w600)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ─── SMALL WIDGETS ──────────────────────────────────────────────────────────────

class _LogoMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52, height: 52,
      decoration: BoxDecoration(
        color: AppColors.surface2,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.cyanBdr, width: 1),
      ),
      child: const Icon(Icons.account_balance_wallet_outlined,
          color: AppColors.cyan, size: 26),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String label;
  const _FieldLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppText.dm(
        size: 10,
        weight: FontWeight.w600,
        color: AppColors.muted,
        letterSpacing: 0.08 * 10,
      ),
    );
  }
}

class _AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData prefixIcon;
  final bool obscure;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const _AppTextField({
    required this.controller,
    required this.hint,
    required this.prefixIcon,
    this.obscure = false,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType,
      style: AppText.dm(size: 14),
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppText.dm(size: 14, color: AppColors.subtle),
        filled: true,
        fillColor: AppColors.surface,
        prefixIcon: Icon(prefixIcon, color: AppColors.subtle, size: 20),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.cyanBdr, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.danger),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.danger),
        ),
      ),
    );
  }
}

class _GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login dengan Google diproses...', style: AppText.dm(color: AppColors.text, size: 13)),
            backgroundColor: AppColors.surface2,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 26, height: 26,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text('G',
                    style: AppText.dm(
                        size: 14,
                        weight: FontWeight.w700,
                        color: const Color(0xFFEA4335))),
              ),
            ),
            const SizedBox(width: 10),
            Text('Masuk dengan Google',
                style: AppText.dm(size: 14, weight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}