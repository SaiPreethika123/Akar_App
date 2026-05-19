import 'dart:math';
import 'package:akar_app/home_screen.dart';
import 'package:akar_app/match_connect_screen.dart';
import 'package:akar_app/package_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomMatchScreen extends StatefulWidget {
  const RandomMatchScreen({super.key});

  @override
  State<RandomMatchScreen> createState() => _RandomMatchScreenState();
}

class _RandomMatchScreenState extends State<RandomMatchScreen>
    with SingleTickerProviderStateMixin {
  int bottomSelectedIndex = 1;
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// BACKGROUND IMAGE
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/backgroundimage.png",
              fit: BoxFit.cover,
            ),
          ),

          /// TOP BAR
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// BACK BUTTON
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),

                  /// COINS CONTAINER
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PackageScreen(), // 👉 your target screen
                        ),
                      );
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        /// MAIN CONTAINER
                        Container(
                          height: 24,
                          width: 75,

                          decoration: BoxDecoration(
                            color: const Color(0xFFF15CBB).withOpacity(0.40),
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(width: 18),
                                  Text(
                                    "400 coins",
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFFffffff),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        /// COIN IMAGE ABOVE CONTAINER
                        Positioned(
                          left: -8,
                          top: -10,
                          child: Image.asset(
                            "assets/images/coinimage.png",
                            width: 29,
                            height: 29,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// CENTER CONTENT
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// CIRCLE WITH PROFILES
                  SizedBox(
                    width: 280,
                    height: 280,
                    child: AnimatedBuilder(
                      animation: _rotationController,
                      builder: (context, child) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            /// OUTER DASHED CIRCLE
                            CustomPaint(
                              size: const Size(280, 280),
                              painter: DashedCirclePainter(
                                radius: 130,
                                strokeWidth: 2,
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),

                            /// INNER DASHED CIRCLE
                            CustomPaint(
                              size: const Size(280, 280),
                              painter: DashedCirclePainter(
                                radius: 90,
                                strokeWidth: 2,
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),

                            /// MAIN PROFILE IMAGE
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/girl1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            /// SMALL PROFILES AROUND CIRCLE
                            _buildSmallProfile(
                              45 + _rotationController.value * 360,
                              130,
                              "assets/images/girl3.png",
                            ),
                            _buildSmallProfile(
                              135 + _rotationController.value * 360,
                              130,
                              "assets/images/girl5.png",
                            ),
                            _buildSmallProfile(
                              225 + _rotationController.value * 360,
                              130,
                              "assets/images/girl2.png",
                            ),
                            _buildSmallProfile(
                              315 + _rotationController.value * 360,
                              130,
                              "assets/images/girl4.png",
                            ),

                            /// INNER CIRCLE PROFILES
                            _buildSmallProfile(
                              0 + _rotationController.value * 360,
                              90,
                              "assets/images/girl1.png",
                            ),
                            _buildSmallProfile(
                              90 + _rotationController.value * 360,
                              90,
                              "assets/images/girl3.png",
                            ),
                            _buildSmallProfile(
                              180 + _rotationController.value * 360,
                              90,
                              "assets/images/girl5.png",
                            ),
                            _buildSmallProfile(
                              270 + _rotationController.value * 360,
                              90,
                              "assets/images/girl2.png",
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// HEADING
                  Text(
                    "Finding your Circle..",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 8),

                  /// SUBTEXT
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "We’re finding people who match your vibe…",
                      style: GoogleFonts.inter(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// START BUTTON
                  GestureDetector(
                    onTap: () {
                      debugPrint("Start button clicked");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MatchConnectScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 236,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF992870), Color(0xFF330D25)],
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
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

  Widget _buildSmallProfile(double angle, double radius, String imagePath) {
    final radians = angle * pi / 180;

    final x = 140 + radius * cos(radians);
    final y = 140 + radius * sin(radians);

    return Positioned(
      left: x - 20,
      top: y - 20,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final Color color;

  DashedCirclePainter({
    required this.radius,
    required this.strokeWidth,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    const dashCount = 30;

    for (int i = 0; i < dashCount; i++) {
      final startAngle = (i * 2 * pi) / dashCount;
      final sweepAngle = pi / dashCount;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
