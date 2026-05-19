import 'package:akar_app/privacypolicy_screen.dart';
import 'package:akar_app/termsandconditions_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Column(
        children: [
          // HEADER
          Container(
              height: 120,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF8F0F5D), Color(0xFF2E001A)],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: -10,
                    top: 45,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 20, // move text downward
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        "Settings",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
          const SizedBox(height: 20),
      
          // PRIVACY TILE
          settingTile(
            icon: Icons.policy,
            title: "Privacy & Policy",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacypolicyScreen(),
                ),
              );
            },
          ),
      
          const SizedBox(height: 12),
      
          // TERMS TILE
          settingTile(
            icon: Icons.description,
            title: "Terms & Conditions",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TermsandconditionsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget settingTile({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xffE5E7EB)),
          ),
          child: Row(
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFAA1B73), Color(0xFF4B062F)],
                  ).createShader(bounds);
                },
                child: Icon(icon, color: Colors.white, size: 22),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff262626),
                  ),
                ),
              ),

              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
