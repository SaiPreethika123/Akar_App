import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Conversationchatscreen extends StatefulWidget {
  const Conversationchatscreen({super.key});

  @override
  State<Conversationchatscreen> createState() => _ConversationchatscreenState();
}

class _ConversationchatscreenState extends State<Conversationchatscreen> {
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
      backgroundColor: const Color(0xffECE7ED),

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
              /// TOP HEADER
              Container(
                padding: const EdgeInsets.only(
                  top: 45,
                  left: 14,
                  right: 14,
                  bottom: 14,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffA11A73), Color(0xff4B022B)],
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),

                    const SizedBox(width: 8),

                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/150?img=12",
                      ),
                    ),

                    const SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "Online",
                          style: GoogleFonts.inter(
                            color: Colors.greenAccent,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    /// COINS
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 26,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text(
                                "400 coins",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          left: -10,
                          top: -8,
                          child: Image.asset(
                            "assets/images/coinimage.png",
                            width: 34,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 12),

                    const Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),
              ),

              /// CHAT AREA
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),

                      /// TODAY
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Today",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      /// LEFT MESSAGE
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/150?img=32",
                            ),
                          ),

                          const SizedBox(width: 6),

                          Container(
                            width: 240,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xffEFE8EF),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "OMG 😳 do you remember what you did last night at the work night out?",
                                  style: GoogleFonts.inter(
                                    color: const Color(0xff4B3F55),
                                    fontSize: 15,
                                  ),
                                ),

                                const SizedBox(height: 6),

                                Text(
                                  "18:12 ✓",
                                  style: GoogleFonts.inter(
                                    color: Colors.black54,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      /// RIGHT MESSAGE
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xffD8B6CF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "no haha",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                "18:16 ✓",
                                style: GoogleFonts.inter(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      /// RIGHT MESSAGE 2
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xffD8B6CF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "i don't remember anything 😬",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                "18:16 ✓",
                                style: GoogleFonts.inter(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      /// LEFT MESSAGE
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/150?img=32",
                            ),
                          ),

                          const SizedBox(width: 6),

                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xffEFE8EF),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Lets connect",
                                  style: GoogleFonts.inter(
                                    color: const Color(0xff4B3F55),
                                    fontSize: 15,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  "18:12 ✓",
                                  style: GoogleFonts.inter(
                                    color: Colors.black54,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      /// BOTTOM INPUT
                      Container(
                        margin: const EdgeInsets.only(bottom: 14),
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.sentiment_satisfied_alt,
                              color: Color(0xff7C1E55),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Send a Message",
                                  hintStyle: GoogleFonts.inter(
                                    color: const Color(0xff7C1E55),
                                  ),
                                ),
                              ),
                            ),

                            const Icon(
                              Icons.camera_alt,
                              color: Color(0xff7C1E55),
                            ),

                            const SizedBox(width: 12),

                            const Icon(
                              Icons.mic_none,
                              color: Color(0xff7C1E55),
                            ),

                            const SizedBox(width: 12),

                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  isScrollControlled: true,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(
                                          context,
                                        ).viewInsets.bottom,
                                      ),

                                      child: Container(
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
                                            colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFF992870),
                                            ],
                                          ),
                                        ),

                                        child: Column(
                                          children: [
                                            /// TOP BAR
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                16.0,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Send a gift",
                                                    style: GoogleFonts.inter(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: const Color(
                                                        0xFF25254F,
                                                      ),
                                                    ),
                                                  ),

                                                  Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      /// MAIN CONTAINER
                                                      Container(
                                                        height: 24,
                                                        // width: 110,
                                                        padding:
                                                            const EdgeInsets.only(
                                                              left: 58,
                                                              right: 18,
                                                            ),
                                                        decoration: BoxDecoration(
                                                          color: const Color(
                                                            0xFF545353,
                                                          ).withOpacity(0.40),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                30,
                                                              ),
                                                        ),

                                                        child: Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Center(
                                                            child: Text(
                                                              "400 coins",
                                                              style: GoogleFonts.inter(
                                                                color:
                                                                    const Color(
                                                                      0xFFffffff,
                                                                    ),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                            /// GIFTS GRID
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                    return GestureDetector(
                                                      onTap: () {
                                                        /// CLOSE FIRST BOTTOM SHEET
                                                        Navigator.pop(context);

                                                        /// OPEN SECOND BOTTOM SHEET
                                                        Future.delayed(
                                                          const Duration(
                                                            milliseconds: 200,
                                                          ),
                                                          () {
                                                            showModalBottomSheet(
                                                              context: context,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              isScrollControlled:
                                                                  true,
                                                              builder: (context) {
                                                                return Container(
                                                                  height: 370,
                                                                  padding:
                                                                      const EdgeInsets.all(
                                                                        20,
                                                                      ),

                                                                  decoration: const BoxDecoration(
                                                                    borderRadius: BorderRadius.only(
                                                                      topLeft:
                                                                          Radius.circular(
                                                                            28,
                                                                          ),
                                                                      topRight:
                                                                          Radius.circular(
                                                                            28,
                                                                          ),
                                                                    ),

                                                                    gradient: LinearGradient(
                                                                      begin: Alignment
                                                                          .topLeft,
                                                                      end: Alignment
                                                                          .bottomRight,
                                                                      colors: [
                                                                        Color(
                                                                          0xFFFFFFFF,
                                                                        ),
                                                                        Color(
                                                                          0xFFB13C86,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),

                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      /// TOP BAR
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            "Send a gift",
                                                                            style: GoogleFonts.inter(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: const Color(
                                                                                0xFF25254F,
                                                                              ),
                                                                            ),
                                                                          ),

                                                                          Stack(
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children: [
                                                                              Container(
                                                                                height: 24,
                                                                                padding: const EdgeInsets.only(
                                                                                  left: 58,
                                                                                  right: 18,
                                                                                ),

                                                                                decoration: BoxDecoration(
                                                                                  color: Colors.grey.withOpacity(
                                                                                    0.4,
                                                                                  ),

                                                                                  borderRadius: BorderRadius.circular(
                                                                                    30,
                                                                                  ),
                                                                                ),

                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "400 coins",
                                                                                    style: GoogleFonts.inter(
                                                                                      color: Colors.white,
                                                                                      fontSize: 12,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),

                                                                              Positioned(
                                                                                left: -8,
                                                                                top: -10,
                                                                                child: Image.asset(
                                                                                  "assets/images/coinimage.png",
                                                                                  width: 52,
                                                                                  height: 56,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      const SizedBox(
                                                                        height:
                                                                            20,
                                                                      ),

                                                                      /// MESSAGE BOX
                                                                      Container(
                                                                        height:
                                                                            110,
                                                                        width: double
                                                                            .infinity,

                                                                        padding:
                                                                            const EdgeInsets.all(
                                                                              14,
                                                                            ),

                                                                        decoration: BoxDecoration(
                                                                          color:
                                                                              Colors.white,

                                                                          borderRadius: BorderRadius.circular(
                                                                            16,
                                                                          ),
                                                                        ),

                                                                        child: TextField(
                                                                          maxLines:
                                                                              null,
                                                                          cursorColor: const Color(
                                                                            0xFF4B3F55,
                                                                          ),

                                                                          style: GoogleFonts.inter(
                                                                            color: const Color(
                                                                              0xFF4B3F55,
                                                                            ),
                                                                            fontSize:
                                                                                18,
                                                                          ),

                                                                          decoration: InputDecoration(
                                                                            border:
                                                                                InputBorder.none,

                                                                            hintText:
                                                                                "🌹 This is for you Sweetie",

                                                                            hintStyle: GoogleFonts.inter(
                                                                              color: const Color(
                                                                                0xFF4B3F55,
                                                                              ),
                                                                              fontSize: 18,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),

                                                                      const SizedBox(
                                                                        height:
                                                                            10,
                                                                      ),

                                                                      /// PRICE TEXT
                                                                      Text(
                                                                        "${gifts[index]["name"]} = ${gifts[index]["coins"]} 💫",

                                                                        style: GoogleFonts.inter(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),

                                                                      const Spacer(),

                                                                      /// SEND BUTTON
                                                                      Container(
                                                                        height:
                                                                            54,
                                                                        width: double
                                                                            .infinity,

                                                                        decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                            18,
                                                                          ),

                                                                          gradient: const LinearGradient(
                                                                            begin:
                                                                                Alignment.topCenter,
                                                                            end:
                                                                                Alignment.bottomCenter,
                                                                            colors: [
                                                                              Color(
                                                                                0xFFB11A7B,
                                                                              ),
                                                                              Color(
                                                                                0xFF3A0427,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),

                                                                        child: Center(
                                                                          child: Text(
                                                                            "Send",

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
                                                                );
                                                              },
                                                            );
                                                          },
                                                        );
                                                      },

                                                      /// GIFT CARD
                                                      child: Container(
                                                        height: 98,
                                                        width: 85,

                                                        decoration: BoxDecoration(
                                                          color: Colors.white,

                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                14,
                                                              ),

                                                          border: Border.all(
                                                            color: const Color(
                                                              0xFF992870,
                                                            ),
                                                            width: 1.5,
                                                          ),
                                                        ),

                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,

                                                          children: [
                                                            Text(
                                                              gifts[index]["emoji"],
                                                              style:
                                                                  const TextStyle(
                                                                    fontSize:
                                                                        24,
                                                                  ),
                                                            ),

                                                            const SizedBox(
                                                              height: 6,
                                                            ),

                                                            Text(
                                                              gifts[index]["name"],

                                                              style: GoogleFonts.inter(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    const Color(
                                                                      0xFF4B5563,
                                                                    ),
                                                              ),

                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),

                                                            const SizedBox(
                                                              height: 4,
                                                            ),

                                                            Container(
                                                              height: 20,
                                                              width: 65,

                                                              decoration: const BoxDecoration(
                                                                gradient: LinearGradient(
                                                                  begin: Alignment
                                                                      .topCenter,
                                                                  end: Alignment
                                                                      .bottomCenter,
                                                                  colors: [
                                                                    Color(
                                                                      0xFF992870,
                                                                    ),
                                                                    Color(
                                                                      0xFF330D25,
                                                                    ),
                                                                  ],
                                                                ),

                                                                borderRadius:
                                                                    BorderRadius.all(
                                                                      Radius.circular(
                                                                        14,
                                                                      ),
                                                                    ),
                                                              ),

                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,

                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .monetization_on,
                                                                    color: Color(
                                                                      0xFFFFD54F,
                                                                    ),
                                                                    size: 16,
                                                                  ),

                                                                  const SizedBox(
                                                                    width: 4,
                                                                  ),

                                                                  Text(
                                                                    "${gifts[index]["coins"]}",

                                                                    style: GoogleFonts.inter(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },

                              child: ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFFFF4FB3),
                                        Color(0xFF7A3CFF),
                                      ],
                                    ).createShader(bounds),

                                child: const Icon(
                                  Icons.card_giftcard,
                                  size: 26,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            const SizedBox(width: 12),

                            const Icon(Icons.send, color: Color(0xff7C1E55)),
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
}
