import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViedocallScreen extends StatefulWidget {
  const ViedocallScreen({super.key});

  @override
  State<ViedocallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<ViedocallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 BACKGROUND IMAGE
          SizedBox.expand(
            child: Image.network(
              "https://images.unsplash.com/photo-1599566150163-29194dcaad36",
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 TOP PURPLE BAR
          Container(
            height: 106,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF8E0E5A), Color(0xFF5A0034)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          /// 🔹 APP BAR CONTENT
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// LEFT
                    Center(
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
                          const SizedBox(width: 80),
                          Text(
                            "Video Call",
                            style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// RIGHT
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF15CBB).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Text("🪙"),
                              const SizedBox(width: 4),
                              Text(
                                "400 coins",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.more_vert, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// 🔹 USER INFO
          Positioned(
            top: 110,
            left: 14,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/women/44.jpg",
                  ),
                ),
                const SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amelia",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 102,
                      height: 26,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "🪙 20 coins/min",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 70),

                /// 🎁 GIFT ICON
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFF4FB3), // top color
                      Color(0xFF7A3CFF), // bottom color
                    ],
                  ).createShader(bounds),
                  child: const Icon(
                    Icons.card_giftcard,
                    size: 26,
                    color: Colors.white, // IMPORTANT
                  ),
                ),

                const SizedBox(width: 10),

                /// FOLLOW BUTTON
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF992870), Color(0xFF330D25)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_add,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "Follow",
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
          ),

          /// 🔹 SMALL VIDEO PREVIEW
          Positioned(
            top: 180,
            right: 14,
            child: Column(
              children: [
                Container(
                  width: 130,
                  height: 183,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://randomuser.me/api/portraits/women/65.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Column(
                  children: [
                    Text(
                      "Ajay",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFFFFFF).withOpacity(0.19),
                            Color(0xffffffff).withOpacity(0.8),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 12,
                            color: Color(0xffFF3A5E),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "27:15",
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

          /// 🔹 BOTTOM CONTROLS
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                control(Icons.volume_up),
                control(Icons.videocam),
                control(Icons.mic),

                /// END CALL
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.call_end, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 CONTROL BUTTON
  Widget control(IconData icon) {
    return GestureDetector(
      onTap: () {
        // you can add toggle logic later
      },
      child: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9).withOpacity(0.70),
          border: Border.all(color: Color(0xffE9E9E9).withOpacity(0.30)),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Color(0xffFAFAFA)),
      ),
    );
  }
}
