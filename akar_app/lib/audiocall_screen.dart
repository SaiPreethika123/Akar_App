import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioCallScreen extends StatefulWidget {
  const AudioCallScreen({super.key});

  @override
  State<AudioCallScreen> createState() => _AudioCallScreenState();
}

class _AudioCallScreenState extends State<AudioCallScreen> {
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
