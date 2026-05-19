import 'package:akar_app/audiocall_screen.dart';
import 'package:akar_app/notification_screen.dart';
import 'package:akar_app/profile_screen.dart';
import 'package:akar_app/random_match_screen.dart';
import 'package:akar_app/search_screen.dart';
import 'package:akar_app/viedocall_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int bottomselectedIndex = 0;

  final List<String> tabs = ["Hot", "Popular", "Live Host", "Following"];

  final List<Map<String, dynamic>> hosts = [
    {"name": "Bella", "age": "22", "image": "assets/images/girl1.png"},
    {"name": "Sophia", "age": "24", "image": "assets/images/girl2.png"},
    {"name": "Emma", "age": "21", "image": "assets/images/girl3.png"},
    {"name": "Olivia", "age": "25", "image": "assets/images/girl4.png"},
    {"name": "James", "age": "27", "image": "assets/images/girl5.png"},
    {"name": "Noah", "age": "23", "image": "assets/images/girl1.png"},
    {"name": "Lucas", "age": "26", "image": "assets/images/girl2.png"},
    {"name": "Mia", "age": "20", "image": "assets/images/girl3.png"},
    {"name": "Ethan", "age": "28", "image": "assets/images/girl4.png"},
    {"name": "Ava", "age": "22", "image": "assets/images/girl5.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,

          children: [
            /// MAIN BAR
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              height: 65,
              width: double.infinity,

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFD91C93), Color(0xFF5B0038)],
                ),

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26),
                  topRight: Radius.circular(26),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: List.generate(4, (index) {
                  List<IconData> icons = [
                    Icons.explore,
                    Icons.workspace_premium,
                    Icons.chat_bubble,
                    Icons.person,
                  ];

                  bool isbottomSelected = bottomselectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        bottomselectedIndex = index;
                      });

                      /// PREMIUM PAGE
                      if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RandomMatchScreen(),
                          ),
                        );
                      }
                      if (index == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      }
                    },

                    child: Transform.translate(
                      offset: Offset(0, isbottomSelected ? -22 : 0),

                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),

                        width: isbottomSelected ? 58 : 45,
                        height: isbottomSelected ? 58 : 45,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          color: isbottomSelected
                              ? const Color(0xFF8A0058)
                              : Colors.transparent,

                          border: isbottomSelected
                              ? Border.all(color: Colors.white, width: 6)
                              : null,
                        ),

                        child: Icon(
                          icons[index],
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
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

          /// GRID VIEW
          Padding(
            padding: const EdgeInsets.only(top: 190),

            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: hosts.length,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.72,
              ),

              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage(hosts[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Stack(
                    children: [
                      /// ONLINE DOT
                      Positioned(
                        top: 10,
                        right: 10,

                        child: Container(
                          width: 10,
                          height: 10,

                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),

                      /// BOTTOM DETAILS
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            /// NAME + AGE
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hosts[index]["name"],
                                  style: GoogleFonts.lexend(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      hosts[index]["age"],
                                      style: GoogleFonts.lexend(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      "🇮🇳",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(width: 35),
                                    Row(
                                      children: [
                                        /// 🎤 AUDIO CALL
                                        buildBottomIcon(Icons.mic, () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AudioCallScreen(), // your audio screen
                                            ),
                                          );
                                        }),

                                        const SizedBox(width: 6),

                                        /// 🎥 VIDEO CALL
                                        buildBottomIcon(Icons.videocam, () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ViedocallScreen(),
                                            ),
                                          );
                                        }),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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

          /// TOP CONTAINER
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFB21C7A), Color(0xFF4A0033)],
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TOP ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// LEFT SIDE
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// IMAGE + NAME
                          Row(
                            children: [
                              /// PROFILE IMAGE
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://i.pravatar.cc/150?img=3",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),

                              /// NAME
                              Text(
                                "Nike",
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),

                          /// COINS CONTAINER
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
                                const Text(
                                  "🪙",
                                  style: TextStyle(fontSize: 13),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "400 coins",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      /// RIGHT SIDE ICONS
                      Row(
                        children: [
                          buildCircleIcon(Icons.search, const SearchScreen()),
                          const SizedBox(width: 12),
                          buildCircleIcon(
                            Icons.tune,
                            const RandomMatchScreen(),
                          ),
                          const SizedBox(width: 12),

                          /// NOTIFICATION
                          Stack(
                            children: [
                              buildCircleIcon(
                                Icons.notifications,
                                const NotificationScreen(),
                              ),

                              Positioned(
                                top: 2,
                                right: 2,

                                child: Container(
                                  width: 10,
                                  height: 10,

                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  /// TAB BAR
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Row(
                      children: List.generate(
                        tabs.length,

                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },

                          child: Padding(
                            padding: const EdgeInsets.only(right: 24),

                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: selectedIndex == index ? 18 : 0,

                                vertical: selectedIndex == index ? 8 : 0,
                              ),

                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? const Color(0xFFDE1796).withOpacity(0.4)
                                    : Colors.transparent,

                                borderRadius: BorderRadius.circular(20),
                              ),

                              child: Text(
                                tabs[index],

                                style: GoogleFonts.aBeeZee(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
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

  /// TOP ICONS
  Widget buildCircleIcon(IconData icon, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },

      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.15),
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
        ),

        child: Icon(icon, color: Colors.white, size: 24),
      ),
    );
  }

  /// BOTTOM CARD ICONS
  Widget buildBottomIcon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: const Color(0xFF7A004F),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Icon(icon, color: Colors.white, size: 16),
      ),
    );
  }
}
