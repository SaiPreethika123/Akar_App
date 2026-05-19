import 'dart:async';
import 'package:akar_app/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// 1. ADD THIS VARIABLE INSIDE _LoginScreenState

  bool isOtpScreen = false;

  /// ADD THESE CONTROLLERS INSIDE _LoginScreenState

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();

  int seconds = 30;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (seconds == 0) {
        t.cancel();
      } else {
        setState(() {
          seconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5A003D),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),

            child: Column(
              children: [
                // TOP IMAGE SECTION
                Container(
                  height: 440,
                  width: double.infinity,
                  padding: EdgeInsets.all(2),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/backgroundimage.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Opacity(
                        opacity: 0.6, // 60% opacity
                        child: Row(
                          children: [
                            // LEFT COLUMN
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: _buildImage(
                                      'assets/images/loginimage1.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildImage(
                                      'assets/images/loginimage4.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // SizedBox(width: 2),

                            // CENTER COLUMN
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: _buildImage(
                                      'assets/images/loginimage2.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildImage(
                                      'assets/images/loginimage5.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // SizedBox(width: 2),

                            // RIGHT COLUMN
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: _buildImage(
                                      'assets/images/loginimage3.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildImage(
                                      'assets/images/loginimage6.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // PINK OVERLAY
                      // Container(
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       begin: Alignment.topCenter,
                      //       end: Alignment.bottomCenter,
                      //       colors: [
                      //         Colors.pink.withOpacity(0.45),
                      //         Colors.purple.withOpacity(0.55),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // CENTER CONTENT
                      Positioned(
                        bottom: -20,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Icon(
                              Icons.videocam,
                              color: Color(0xFFffffff),
                              size: 57,
                            ),

                            SizedBox(height: 14),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Heart Sync',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  'Chat, Talk & Connect Instantly',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 6),

                // BOTTOM LOGIN SECTION
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF992870), Color(0xFF330D25)],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),

                    /// TOP BORDER ONLY
                    border: Border(
                      top: BorderSide(color: Colors.white, width: 0.7),
                    ),
                  ),

                  /// 3. INSIDE THE BOTTOM LOGIN CONTAINER
                  /// REPLACE THE ENTIRE Column(
                  /// children:[ ... ]
                  /// )
                  /// WITH THIS
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    child: !isOtpScreen
                        ?
                          /// =========================
                          /// PHONE NUMBER SCREEN
                          /// =========================
                          Column(
                            key: ValueKey(1),
                            children: [
                              // QUICK LOGIN BUTTON
                              Container(
                                height: 42,
                                width: 185,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(color: Colors.white70),
                                  color: Color(0xFF000000).withOpacity(0.6),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.flash_on,
                                        color: Colors.yellow,
                                        size: 24,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Quick Log In',
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 12),

                              // OR LINE
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    child: Text(
                                      'or',
                                      style: GoogleFonts.inter(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),

                              // PHONE FIELD
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                height: 50,
                                width: 272,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  color: Colors.white.withOpacity(0.12),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Phone Number",
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          '🇮🇳 +91',
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(width: 10),

                                    Container(
                                      height: 25,
                                      width: 1,
                                      color: Colors.white54,
                                    ),

                                    SizedBox(width: 12),

                                    Expanded(
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        maxLength: 10,
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                        ),
                                        decoration: InputDecoration(
                                          counterText: "",
                                          border: InputBorder.none,
                                          hintText: 'Enter Phone Number',
                                          hintStyle: GoogleFonts.inter(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 12),

                              /// CONTINUE BUTTON
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isOtpScreen = true;
                                  });
                                },
                                child: Container(
                                  height: 55,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF992870),
                                        Color(0xFF330D25),
                                      ],
                                    ),
                                    border: Border.all(color: Colors.white70),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Continue',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 12),
                              Text(
                                "By continuing, you agree to our   Terms of Services & Privacy Policy",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.white70,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          )
                        :
                          /// OTP SCREEN
                          Column(
                            key: ValueKey(2),
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Enter Verification Code",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Enter the 4-digit verification code sent to this xxxxx26542 to proceed",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),

                              /// REPLACE YOUR OTP ROW WITH THIS
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      otpBox(
                                        focusNode: focusNode1,
                                        nextFocus: focusNode2,
                                      ),

                                      otpBox(
                                        focusNode: focusNode2,
                                        nextFocus: focusNode3,
                                        previousFocus: focusNode1,
                                      ),

                                      otpBox(
                                        focusNode: focusNode3,
                                        nextFocus: focusNode4,
                                        previousFocus: focusNode2,
                                      ),

                                      otpBox(
                                        focusNode: focusNode4,
                                        previousFocus: focusNode3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 18),
                                  Text(
                                    seconds == 0
                                        ? "Resend code?"
                                        : "Resend code?   00:${seconds.toString().padLeft(2, '0')}",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 55,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF992870),
                                        Color(0xFF330D25),
                                      ],
                                    ),
                                    border: Border.all(color: Colors.white70),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Continue',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 14,
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
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Container(
      margin: EdgeInsets.all(1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }

  /// ADD THIS METHOD BELOW build()

  Widget otpBox({
    required FocusNode focusNode,
    FocusNode? nextFocus,
    FocusNode? previousFocus,
  }) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white54),
        color: Colors.white.withOpacity(0.12),
      ),
      child: Center(
        child: TextField(
          focusNode: focusNode,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          decoration: const InputDecoration(
            counterText: "",
            border: InputBorder.none,
          ),

          onChanged: (value) {
            /// MOVE FORWARD
            if (value.length == 1 && nextFocus != null) {
              FocusScope.of(context).requestFocus(nextFocus);
            }

            /// MOVE BACKWARD
            if (value.isEmpty && previousFocus != null) {
              FocusScope.of(context).requestFocus(previousFocus);
            }
          },
        ),
      ),
    );
  }
}
