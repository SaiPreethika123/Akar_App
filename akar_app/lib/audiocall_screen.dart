import 'package:akar_app/package_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioCallScreen extends StatefulWidget {
  const AudioCallScreen({super.key});

  @override
  State<AudioCallScreen> createState() => _AudioCallScreenState();
}

class _AudioCallScreenState extends State<AudioCallScreen> {
  final List<Map<String, dynamic>> gifts = [
    {"emoji": "❤️", "name": "Love", "coins": 20},
    {"emoji": "🌹", "name": "Rose", "coins": 50},
    {"emoji": "🎁", "name": "Gift Box", "coins": 100},
    {"emoji": "🍫", "name": "Chocolate", "coins": 30},
    {"emoji": "💍", "name": "Ring", "coins": 100},
    {"emoji": "🐻", "name": "Teddy", "coins": 120},
    {"emoji": "👑", "name": "Crown", "coins": 100},
    {"emoji": "🚗", "name": "Car", "coins": 200},
    {"emoji": "💍", "name": "Ring", "coins": 100},
    {"emoji": "🐻", "name": "Teddy", "coins": 120},
    {"emoji": "👑", "name": "Crown", "coins": 100},
    {"emoji": "🚗", "name": "Car", "coins": 200},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Column(
        children: [
          /// 🔹 TOP GRADIENT BAR
          Container(
            height: 106,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF8E0E5A), Color(0xFF5A0034)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// LEFT
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 70),
                        Text(
                          "Audio Call",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    /// RIGHT
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
          ),

          /// 🔹 USER INFO
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/women/44.jpg",
                  ),
                ),
                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amala",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "🪙 12 coins / min",
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                /// 🎁 GIFT ICON
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      builder: (context) {
                        return Container(
                          height: 393,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF8F1F5),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(26),
                              topRight: Radius.circular(26),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              transform: GradientRotation(0.8),
                              colors: [Color(0xFFFFFFFF), Color(0xFF992870)],
                            ),
                          ),

                          child: Column(
                            children: [
                              /// TOP BAR
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Send a gift",
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFF25254F),
                                      ),
                                    ),

                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        /// MAIN CONTAINER
                                        Container(
                                          height: 24,
                                          // width: 110,
                                          padding: const EdgeInsets.only(
                                            left: 58,
                                            right: 18,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(
                                              0xFF545353,
                                            ).withOpacity(0.40),
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),

                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Center(
                                              child: Text(
                                                "400 coins",
                                                style: GoogleFonts.inter(
                                                  color: const Color(
                                                    0xFFffffff,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                                            width: 52,
                                            height: 56,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 16),

                              /// GIFTS GRID
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                  ),
                                  child: GridView.builder(
                                    itemCount: gifts.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          mainAxisSpacing: 12,
                                          crossAxisSpacing: 12,
                                          childAspectRatio: 0.78,
                                        ),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 98,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            14,
                                          ),
                                          border: Border.all(
                                            color: const Color(0xFF992870),
                                            width: 1.5,
                                          ),
                                        ),

                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              gifts[index]["emoji"],
                                              style: const TextStyle(
                                                fontSize: 24,
                                              ),
                                            ),

                                            const SizedBox(height: 6),

                                            Text(
                                              gifts[index]["name"],
                                              style: GoogleFonts.inter(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xFF4B5563),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),

                                            const SizedBox(height: 4),

                                            Container(
                                              height: 20,
                                              width: 65,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                  ),
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xFF992870),
                                                    Color(0xFF330D25),
                                                  ],
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(14),
                                                ),
                                              ),

                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.monetization_on,
                                                    color: Color(0xFFFFD54F),
                                                    size: 16,
                                                  ),

                                                  const SizedBox(width: 4),

                                                  Text(
                                                    "${gifts[index]["coins"]}",
                                                    style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },

                  child: ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFF4FB3), Color(0xFF7A3CFF)],
                    ).createShader(bounds),

                    child: const Icon(
                      Icons.card_giftcard,
                      size: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          /// 🔹 MAIN PROFILE CIRCLES
          SizedBox(
            width: 240,
            height: 260,
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// BIG CIRCLE
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF8E0E5A),
                      width: 4,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1599566150163-29194dcaad36",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                /// SMALL OVERLAY CIRCLE
                Positioned(
                  top: 160,
                  left: 130,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF8E0E5A),
                        width: 4,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://randomuser.me/api/portraits/women/65.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 NAME
          Text(
            "Ajay",
            style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 6),

          /// 🔹 TIMER (TRANSPARENT PILL)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.circle, size: 8, color: Colors.redAccent),
                const SizedBox(width: 6),
                Text(
                  "27:15",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          /// 🔹 BOTTOM CONTROLS
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                control(Icons.volume_up),

                /// 🔴 END CALL
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.call, color: Colors.white),
                  ),
                ),

                control(Icons.mic),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 CONTROL BUTTON
  Widget control(IconData icon) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        // color: Colors.grey.shade300,
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xffD7D7D7)),
      ),
      child: Icon(icon, color: Color(0xff252525)),
    );
  }
}
