import 'package:akar_app/audiocall_screen.dart';
import 'package:akar_app/chat_screen.dart';
import 'package:akar_app/notification_screen.dart';
import 'package:akar_app/package_screen.dart';
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
  /// TOP TABS
  int selectedIndex = 0;

  /// BOTTOM NAVIGATION
  int bottomselectedIndex = 0;

  final List<String> tabs = ["Hot", "Popular", "Live Host", "Following"];

  final List<Map<String, dynamic>> hosts = [
    {"name": "Bella", "age": "22", "image": "assets/images/girl1.png"},
    {"name": "Sophia", "age": "24", "image": "assets/images/girl2.png"},
    {"name": "Emma", "age": "21", "image": "assets/images/girl3.png"},
    {"name": "Olivia", "age": "25", "image": "assets/images/girl4.png"},
    {"name": "James", "age": "27", "image": "assets/images/girl5.png"},
    {"name": "Noah", "age": "23", "image": "assets/images/girl1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,

      /// ================= BODY =================
      body: IndexedStack(
        index: bottomselectedIndex,
        children: [
          buildHomeContent(),
          const RandomMatchScreen(),
          const ChatScreen(),
          ProfileScreen(),
        ],
      ),

      /// ================= BOTTOM NAVIGATION =================
      bottomNavigationBar: SizedBox(
        height: 85,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 70,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF992870), Color(0xFF330D25)],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
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

                  bool isSelected = bottomselectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        bottomselectedIndex = index;
                      });
                    },

                    child: SizedBox(
                      width: 70,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          /// SELECTED ICON
                          if (isSelected)
                            Positioned(
                              top: -28,
                              child: Column(
                                children: [
                                  Container(
                                    height: 62,
                                    width: 62,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF992870),
                                          Color(0xFF330D25),
                                        ],
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 5,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),

                                    child: Icon(
                                      icons[index],
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(top: 2),
                                    width: 75,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          /// NORMAL ICON
                          else
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Icon(
                                icons[index],
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ================= HOME CONTENT =================
  Widget buildHomeContent() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgroundimage.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          /// TOP SECTION
          buildTopSection(),

          /// TAB CHANGING SCREENS
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),

              child: selectedIndex == 0
                  ? buildHostsGrid()
                  : selectedIndex == 1
                  ? buildPopularScreen()
                  : selectedIndex == 2
                  ? buildLiveHostScreen()
                  : buildFollowingScreen(),
            ),
          ),
        ],
      ),
    );
  }

  /// ================= TOP SECTION =================
  Widget buildTopSection() {
    return Container(
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
            /// ================= TOP ROW =================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// LEFT SIDE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
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
                        SizedBox(height: 4),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PackageScreen(),
                              ),
                            );
                          },

                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 24,
                                width: 95,
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFF15CBB,
                                  ).withOpacity(0.40),
                                  borderRadius: BorderRadius.circular(30),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 22),
                                  child: Center(
                                    child: Text(
                                      "400 coins",
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                left: -8,
                                top: -8,
                                child: Image.asset(
                                  "assets/images/coinimage.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                /// ================= RIGHT ICONS =================
                Row(
                  children: [
                    buildCircleIcon(Icons.search, const SearchScreen()),

                    const SizedBox(width: 12),

                    buildCircleIcon(Icons.tune, const RandomMatchScreen()),

                    const SizedBox(width: 12),

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

            /// ================= TABS =================
            /// ================= TABS =================
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },

                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      margin: const EdgeInsets.only(right: 14),
                      padding: EdgeInsets.symmetric(
                        horizontal: isSelected ? 20 : 10,
                        vertical: 8,
                      ),

                      decoration: BoxDecoration(
                        gradient: isSelected
                            ? const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFD91C93), Color(0xFF5B0038)],
                              )
                            : null,

                        color: isSelected
                            ? null
                            : Colors.white.withOpacity(0.08),

                        borderRadius: BorderRadius.circular(25),

                        border: Border.all(
                          color: isSelected
                              ? Colors.white
                              : Colors.white.withOpacity(0.2),
                          width: 1,
                        ),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: isSelected ? 8 : 0,
                            height: 8,
                            margin: EdgeInsets.only(right: isSelected ? 8 : 0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),

                          Text(
                            tabs[index],
                            style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: isSelected ? 17 : 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ================= HOT GRID =================
  Widget buildHostsGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: hosts.length,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.62,
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
                child: Column(
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

                        const Text("🇮🇳", style: TextStyle(fontSize: 14)),

                        const Spacer(),

                        /// AUDIO
                        buildBottomIcon(Icons.mic, () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AudioCallScreen(),
                            ),
                          );
                        }),

                        const SizedBox(width: 6),

                        /// VIDEO
                        buildBottomIcon(Icons.videocam, () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ViedocallScreen(),
                            ),
                          );
                        }),
                        //  SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// ================= OTHER TAB SCREENS =================
  Widget buildPopularScreen() {
    return const Center(
      child: Text(
        "Popular Screen",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }

  Widget buildLiveHostScreen() {
    return const Center(
      child: Text(
        "Live Host Screen",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }

  Widget buildFollowingScreen() {
    return const Center(
      child: Text(
        "Following Screen",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }

  /// ================= TOP ICON BUTTON =================
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

  /// ================= BOTTOM ICON =================
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
