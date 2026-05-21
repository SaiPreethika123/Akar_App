import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsProfileScreen extends StatefulWidget {
  const DetailsProfileScreen({super.key});

  @override
  State<DetailsProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<DetailsProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ================= TOP BAR =================
            Container(
              height: 106,
              width: double.infinity,

              padding: const EdgeInsets.only(top: 45, left: 12, right: 12),

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF9D1B6F), Color(0xFF2D001C)],
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },

                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),

                  Text(
                    "Profile",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  PopupMenuButton(
                    constraints: const BoxConstraints(
                      minWidth: 140,
                      maxWidth: 160,
                    ),
                    color: Colors.white,

                    icon: const Icon(Icons.more_vert, color: Colors.white),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(Icons.person_off),

                            const SizedBox(width: 10),

                            Text(
                              "Report",
                              style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(Icons.block),

                            const SizedBox(width: 10),

                            Text(
                              "Block",
                              style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
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

            /// ================= IMAGE SECTION =================
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 280,
                  width: double.infinity,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                /// SMALL IMAGES
                Positioned(
                  bottom: 35,
                  left: 0,
                  right: 80,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),

                        width: 45,
                        height: 62,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                          // border: Border.all(color: Colors.white, width: 2),

                          image: DecorationImage(
                            image: NetworkImage(
                              "https://picsum.photos/200?random=$index",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                /// FOLLOW BOX
                Positioned(
                  bottom: -20,
                  right: 16,

                  child: Container(
                    width: 190,
                    height: 51,

                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF8B005D), Color(0xFF3B0026)],
                      ),

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "1k Follow",
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        Container(height: 20, width: 1, color: Colors.white38),

                        Text(
                          "2k Followers",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            /// ================= DETAILS SECTION =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),

                  border: Border.all(color: Colors.grey.shade300),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// NAME
                    Row(
                      children: [
                        Text(
                          "Alexander",
                          style: GoogleFonts.inter(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(width: 8),

                        const Text("🇮🇳", style: TextStyle(fontSize: 24)),
                      ],
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "ID: 12345678",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        Text(
                          "25Y",
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(width: 20),

                        Text(
                          "English & Telugu",
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    /// TAGS
                    Row(
                      children: [
                        topTag(
                          icon: Icons.male,
                          title: "Male",
                          color: Colors.lightBlue,
                        ),

                        const SizedBox(width: 10),

                        topTag(
                          icon: Icons.favorite,
                          title: "Level 6",
                          color: Colors.purpleAccent,
                        ),

                        const SizedBox(width: 10),

                        topTag(
                          icon: Icons.circle,
                          title: "Inactive",
                          color: Colors.grey.shade300,
                          textColor: Colors.white,
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    /// ABOUT
                    Text(
                      "About",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "I am single 25 years old. I love fitness, travelling, & going out to play. You can find me in Jakarta.",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 22),

                    /// INTEREST
                    Text(
                      "Interest",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 14),

                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        interestBox("Shopping"),
                        interestBox("Movie"),
                        interestBox("Painting"),
                        interestBox("Painting"),
                      ],
                    ),

                    const SizedBox(height: 22),

                    /// RATING
                    Row(
                      children: [
                        Text(
                          "Rating",
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(width: 10),

                        const Icon(Icons.star, color: Colors.amber),

                        const SizedBox(width: 4),

                        Text(
                          "5",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    /// BOTTOM TAGS
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        outlineTag("Handsome"),
                        outlineTag("Dusky"),
                        outlineTag("Young"),
                        outlineTag("Charming"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget topTag({
    required IconData icon,
    required String title,
    required Color color,
    Color textColor = Colors.white,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Icon(icon, size: 16, color: textColor),

          const SizedBox(width: 5),

          Text(
            title,
            style: GoogleFonts.inter(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget interestBox(String title) {
    return Container(
      width: 120,
      height: 42,

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF8B005D), Color(0xFF3B0026)],
        ),

        borderRadius: BorderRadius.circular(12),
      ),

      child: Center(
        child: Text(
          title,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget outlineTag(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),

        border: Border.all(color: const Color(0xFFB0006D)),
      ),

      child: Text(
        title,
        style: GoogleFonts.inter(
          color: const Color(0xFFB0006D),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
