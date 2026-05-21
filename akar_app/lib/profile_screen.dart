import 'package:akar_app/callhistory_screen.dart';
import 'package:akar_app/details_profile_screen.dart';
import 'package:akar_app/edit_profile_screen.dart';
import 'package:akar_app/helpandsupport_screen.dart';
import 'package:akar_app/home_screen.dart';
import 'package:akar_app/hostrequestscreen.dart';
import 'package:akar_app/languageprofile_screen.dart';
import 'package:akar_app/login_screen.dart';
import 'package:akar_app/mylevel_screen.dart';
import 'package:akar_app/mywallet_screen.dart';
import 'package:akar_app/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TOP SECTION
            Stack(
              clipBehavior: Clip.none,
              children: [
                // PINK CURVED BACKGROUND
                ClipPath(
                  clipper: ProfileCurveClipper(),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFAA1B73), Color(0xFF4B062F)],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(110),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),

                              const Spacer(),

                              Text(
                                "Profile",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              const Spacer(),

                              const SizedBox(width: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // PROFILE CARD
                Positioned(
                  left: 20,
                  right: 20,
                  top: 130,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [Color(0xFF5B3B43), Color(0xFF734953)],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 35),

                            // Name Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Stella",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "🇮🇳",
                                  style: GoogleFonts.inter(fontSize: 16),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "ID:12345678",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8),

                            // Age + Level
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "28y",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 10),

                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA13836),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "Level 4",
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Profile Image
                      Positioned(
                        top: -45,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 42,
                                  backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                                  ),
                                ),
                              ),

                              // Camera Icon
                              Positioned(
                                bottom: 0,
                                right: -2,
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.camera_alt,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Right Top Icons
                      Positioned(
                        right: 12,
                        top: 10,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditProfileScreen(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),

            profileTileWidget(
              icon: Icons.account_balance_wallet,
              title: "My Wallet",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MywalletScreen()),
                );
              },
            ),
            profileDividerWidget(),

            profileTileWidget(
              icon: Icons.history,
              title: "History",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CallhistoryScreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),

            profileTileWidget(
              icon: Icons.language,
              title: "Language",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LanguageprofileScreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),

            profileTileWidget(
              icon: Icons.person_add,
              title: "Followers",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsProfileScreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),
            profileTileWidget(
              icon: Icons.shield,
              title: "My Level",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MylevelScreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),
            profileTileWidget(
              icon: Icons.live_tv_sharp,
              title: "Host Requests",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hostrequestscreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),
            profileTileWidget(icon: Icons.block, title: "Blocked Users"),
            profileDividerWidget(),
            profileTileWidget(
              icon: Icons.help,
              title: "Help & Support",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HelpandsupportScreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),
            profileTileWidget(
              icon: Icons.settings,
              title: "Settings",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  ),
                );
              },
            ),
            profileDividerWidget(),
            profileTileWidget(
              icon: Icons.delete,
              title: "Delete Account",
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SettingScreen(),
                //   ),
                // );
              },
            ),

            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                height: 55,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF992870), Color(0xFF330D25)],
                  ),
                  border: Border.all(color: Colors.white70),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.logout, color: Colors.white, size: 22),
                    SizedBox(width: 30),
                    Text(
                      'Log Out',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 120),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget profileTileWidget({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                // ICON
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFAA1B73), Color(0xFF4B062F)],
                    ).createShader(bounds);
                  },
                  child: Icon(icon, size: 24, color: Colors.white),
                ),

                SizedBox(width: 14),

                // TITLE
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,

                      color: Color(0xff262626),
                    ),
                  ),
                ),

                // ARROW
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
              ],
            ),
          ),
        ),

        // DIVIDER
      ],
    );
  }

  Widget profileDividerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Color(0xffE5E7EB), thickness: 1, height: 1),
    );
  }
}

class ProfileCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // top left
    path.lineTo(0, size.height - 115);

    // exact smooth deep arc
    path.quadraticBezierTo(
      size.width * 0.50,
      size.height + 150,
      size.width,
      size.height - 115,
    );

    // top right
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
