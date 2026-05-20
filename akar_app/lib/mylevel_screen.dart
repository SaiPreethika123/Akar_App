import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MylevelScreen extends StatelessWidget {
  const MylevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final levels = [
      {
        "title": "Level 1",
        "coins": "0 - 1000 Coins",
        "icon": Icons.local_fire_department,
        "color": const Color(0xFFFF6B57),
        "current": true,
      },
      {
        "title": "Level 2",
        "coins": "1000 - 5000 Coins",
        "icon": Icons.diamond,
        "color": const Color(0xFFCC3EFF),
      },
      {
        "title": "Level 3",
        "coins": "5000 - 15000 Coins",
        "icon": Icons.star,
        "color": const Color(0xFF6C4DFF),
      },
      {
        "title": "Level 4",
        "coins": "15000 - 50000 Coins",
        "icon": Icons.workspace_premium,
        "color": const Color(0xFFFF9800),
      },
      {
        "title": "Level 5",
        "coins": "50000+ Coins",
        "icon": Icons.emoji_events,
        "color": const Color(0xFF9C27B0),
      },
    ];

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

          Column(
            children: [
              /// ================= TOP HEADER =================
              Container(
                height: 197,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF9D1B6F), Color(0xFF33001F)],
                  ),

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),

                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },

                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "My  Level",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 18),
                  ],
                ),
              ),

              /// ================= BODY =================
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    /// PROFILE CARD
                    Positioned(
                      top: -40,
                      left: 16,
                      right: 16,

                      child: Container(
                        height: 304,
                        width: 335,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),

                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF581C87), Color(0xFF43106B)],
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff581C87).withOpacity(0.4),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            /// PROFILE IMAGE
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,

                              children: [
                                /// PROFILE IMAGE
                                Container(
                                  width: 92,
                                  height: 95,

                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),

                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/girl1.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                /// LEVEL BADGE
                                Positioned(
                                  bottom: -20,

                                  child: Container(
                                    width: 68,
                                    height: 31,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 4,
                                    ),

                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        // begin: Alignment.topCenter,
                                        // end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFFF97316),
                                          Color(0xFFEC4899),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(20),

                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.5,
                                      ),
                                    ),

                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 12,
                                        ),

                                        const SizedBox(width: 4),

                                        Text(
                                          "Lv.1",
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            Text(
                              "Stella",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            const SizedBox(height: 22),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Progress to Lv. 2",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                Text(
                                  "300 / 1000",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 14),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: LinearProgressIndicator(
                                value: 0.3,
                                minHeight: 12,
                                backgroundColor: Colors.white,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  Color(0xff992870),
                                ),
                              ),
                            ),

                            const SizedBox(height: 14),

                            Text(
                              "Earn more by calls, gifts, and interactions",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.white70,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// ================= LEVEL LIST =================
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 280,
                        left: 16,
                        right: 16,
                      ),

                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Level Progression",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                            ListView.builder(
                              itemCount: levels.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),

                              itemBuilder: (context, index) {
                                final item = levels[index];

                                return Container(
                                  height: 88,
                                  margin: const EdgeInsets.only(bottom: 12),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),

                                  decoration: BoxDecoration(
                                    gradient: index == 0
                                        ? LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(
                                                0xFF831843,
                                              ).withOpacity(0.4),
                                              Color(
                                                0xFF581C87,
                                              ).withOpacity(0.4),
                                            ],
                                          )
                                        : LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.white.withOpacity(0.22),
                                              Colors.white.withOpacity(0.10),
                                            ],
                                          ),
                                    border: Border.all(
                                      color: index == 0
                                          ? Color(0xffEC4899).withOpacity(0.4)
                                          : Colors.white.withOpacity(0.4),
                                      width: index == 0 ? 2 : 1,
                                    ),

                                    borderRadius: BorderRadius.circular(14),
                                  ),

                                  child: Row(
                                    children: [
                                      /// ICON
                                      Container(
                                        width: 56,
                                        height: 56,

                                        decoration: BoxDecoration(
                                          gradient: index == 0
                                              ? const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFFF97316),
                                                    Color(0xFFEC4899),
                                                  ],
                                                )
                                              : index == 1
                                              ? const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFF9333EA),
                                                    Color(0xFFDB2777),
                                                  ],
                                                )
                                              : index == 2
                                              ? const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFF2563EB),
                                                    Color(0xFF9333EA),
                                                  ],
                                                )
                                              : index == 3
                                              ? const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFFEAB308),
                                                    Color(0xFFF97316),
                                                  ],
                                                )
                                              : const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFF7E22CE),
                                                    Color(0xFFBE185D),
                                                  ],
                                                ),

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),

                                        child: Icon(
                                          item["icon"] as IconData,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),

                                      const SizedBox(width: 12),

                                      /// TEXT
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,

                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  item["title"] as String,
                                                  style: GoogleFonts.inter(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),

                                                if (index == 0) ...[
                                                  const SizedBox(width: 8),

                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 8,
                                                          vertical: 2,
                                                        ),

                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                        0xFFEC4899,
                                                      ),

                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),

                                                    child: Text(
                                                      "CURRENT",
                                                      style: GoogleFonts.inter(
                                                        color: Colors.white,
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ],

                                                if (index == 4) ...[
                                                  const SizedBox(width: 8),

                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 8,
                                                          vertical: 2,
                                                        ),

                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                        0xFFFF9800,
                                                      ),

                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),

                                                    child: Text(
                                                      "VIP",
                                                      style: GoogleFonts.inter(
                                                        color: Colors.white,
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ],
                                            ),

                                            const SizedBox(height: 4),

                                            Text(
                                              item["coins"] as String,
                                              style: GoogleFonts.inter(
                                                color: Colors.white70,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      /// RIGHT ICON
                                      Icon(
                                        index == 0
                                            ? Icons.check_circle
                                            : Icons.lock,
                                        color: index == 0
                                            ? Colors.pinkAccent
                                            : Colors.black54,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),

                            const SizedBox(height: 20),

                            /// TOPUP BUTTON
                            Container(
                              width: double.infinity,
                              height: 52,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),

                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFB71B7B),
                                    Color(0xFF5A0034),
                                  ],
                                ),

                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),

                              child: Center(
                                child: Text(
                                  "🪙 Top Up Coins",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
