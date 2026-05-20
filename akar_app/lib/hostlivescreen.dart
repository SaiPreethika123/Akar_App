/// =========================
/// LIVE STREAM SCREEN
/// =========================

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hostlivescreen extends StatefulWidget {
  const Hostlivescreen({super.key});

  @override
  State<Hostlivescreen> createState() => _HostlivescreenState();
}

class _HostlivescreenState extends State<Hostlivescreen> {
  int selectedIndex = 1;

  List<Map<String, dynamic>> users = [
    {"image": "assets/images/girl1.png", "name": "Mike", "host": true},

    {"image": "assets/images/girl2.png", "name": "Ramolla", "host": false},

    {"image": "assets/images/girl2.png", "name": "Emma", "host": false},

    {"image": "assets/images/girl3.png", "name": "Swajan", "host": false},

    {"image": "assets/images/girl4.png", "name": "Sanju", "host": false},

    {"image": "assets/images/girl3.png", "name": "Alex", "host": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// BG
          Positioned(
            top: 70,
            right: -30,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.withOpacity(0.25),
              ),
            ),
          ),

          Positioned(
            bottom: 60,
            right: 30,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.withOpacity(0.15),
              ),
            ),
          ),

          Positioned(
            top: 330,
            left: -20,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange.withOpacity(0.20),
              ),
            ),
          ),

          Column(
            children: [
              // SizedBox(height: 20),
              /// TOP HEADER
              Container(
                height: 110,
                padding: const EdgeInsets.only(left: 12, right: 12, top: 45),

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF9F1F73), Color(0xFF2B001A)],
                  ),
                ),

                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),

                    const SizedBox(width: 8),

                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/girl.png"),
                    ),

                    const SizedBox(width: 8),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "@Stella Ramolla",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "ID: 12345678",
                          style: GoogleFonts.inter(
                            color: Colors.white70,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),

                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: Row(
                        children: [
                          Image.asset("assets/images/coinimage.png", width: 24),

                          const SizedBox(width: 4),

                          Text(
                            "400 coins",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),
              ),

              /// ADD THIS BELOW TOP HEADER
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),

                  child: Column(
                    children: [
                      /// TIME CARD
                      Align(
                        alignment: Alignment.centerLeft,

                        child: Container(
                          height: 38,
                          width: 156,

                          padding: const EdgeInsets.symmetric(horizontal: 12),

                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),

                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.blue,
                                size: 20,
                              ),

                              const SizedBox(width: 6),

                              Text(
                                "12:00",
                                style: GoogleFonts.inter(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),

                              const SizedBox(width: 15),

                              const Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 18,
                              ),

                              Text(
                                "10/min",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),

                        itemCount: users.length,

                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 14,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.9,
                            ),

                        itemBuilder: (context, index) {
                          final user = users[index];

                          return requestCard(
                            image: user["image"],
                            name: user["name"],
                            isHost: user["host"],
                            isSelected: selectedIndex == index,

                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          );
                        },
                      ),

                      const SizedBox(height: 24),

                      /// COMMENTS
                      commentCard("Jessica", "2m", "Amazing stream! 🔥"),

                      const SizedBox(height: 12),

                      commentCard("David", "1m", "Love the energy here! ⚡"),

                      const SizedBox(height: 12),

                      commentCard(
                        "Luna",
                        "30s",
                        "Can I join the conversation? 💫",
                      ),

                      const Spacer(),

                      /// MESSAGE BAR
                      Container(
                        height: 54,
                        padding: const EdgeInsets.symmetric(horizontal: 14),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),

                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFB1187B), Color(0xFF3A0327)],
                          ),
                        ),

                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.inter(color: Colors.white),

                                decoration: InputDecoration(
                                  border: InputBorder.none,

                                  hintText: "Write your message",

                                  hintStyle: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),

                            const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 20,
                            ),

                            const SizedBox(width: 10),

                            const Icon(
                              Icons.photo_camera_outlined,
                              color: Colors.white,
                              size: 20,
                            ),

                            const SizedBox(width: 10),

                            const Icon(
                              Icons.mic_none,
                              color: Colors.white,
                              size: 20,
                            ),

                            const SizedBox(width: 10),

                            const Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// ADD THESE METHODS BELOW build()

  Widget requestCard({
    required String image,
    required String name,
    bool isHost = false,
    bool isSelected = false,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: isSelected ? 110 : 90,
        width: 105,

        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.75),

          borderRadius: BorderRadius.circular(18),

          border: Border.all(
            color: isSelected ? const Color(0xFFB1187B) : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
        ),

        child: Stack(
          children: [
            /// ONLINE DOT
            Positioned(
              top: 8,
              right: 8,

              child: Container(
                width: 8,
                height: 8,

                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,

                  border: Border.all(color: Colors.green, width: 1),
                ),
              ),
            ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  if (isHost)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),

                      child: Text(
                        "Host",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  CircleAvatar(
                    radius: isSelected ? 28 : 22,
                    backgroundImage: AssetImage(image),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    name,
                    style: GoogleFonts.inter(
                      fontSize: isSelected ? 14 : 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hostCard() {
    return Container(
      height: 110,
      width: 105,

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.75),

        borderRadius: BorderRadius.circular(18),

        border: Border.all(color: const Color(0xFFB1187B), width: 2),
      ),

      child: Stack(
        children: [
          /// ONLINE DOT
          Positioned(
            top: 8,
            right: 8,

            child: Container(
              width: 8,
              height: 8,

              decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,

                border: Border.all(color: Colors.green, width: 1),
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/images/girl.png"),
                ),

                const SizedBox(height: 10),

                Text(
                  "Stella Ramolla",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget commentCard(String name, String time, String msg) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),

        borderRadius: BorderRadius.circular(14),

        border: Border.all(color: Colors.black12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [
              Text(
                name,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),

              const SizedBox(width: 6),

              Text(
                "•  $time",
                style: GoogleFonts.inter(color: Colors.grey, fontSize: 11),
              ),
            ],
          ),

          const SizedBox(height: 6),

          Text(
            msg,
            style: GoogleFonts.inter(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
