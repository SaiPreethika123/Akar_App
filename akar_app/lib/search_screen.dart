import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Map<String, String>> users = [
    {
      "name": "Myley Corbyn",
      "id": "12345678",
      "image": "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
    },
    {
      "name": "Johnny Rios",
      "id": "12345678",
      "image": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
    },
    {
      "name": "Luella Wood",
      "id": "12345678",
      "image": "https://images.unsplash.com/photo-1524504388940-b1c1722653e1",
    },
    {
      "name": "Roxie Poole",
      "id": "12345678",
      "image": "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
    },
    {
      "name": "Hester Spencer",
      "id": "12345678",
      "image": "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df",
    },
    {
      "name": "Michael Barrett",
      "id": "12345678",
      "image": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E3EA),

      body: Stack(
        children: [
          /// BACKGROUND LIGHT EFFECTS
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
              /// TOP HEADER
              Container(
                height: 110,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF9B1C6B), Color(0xFF3A001F)],
                  ),
                ),

                child: SafeArea(
                  child: Row(
                    children: [
                      /// BACK BUTTON
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

                      const SizedBox(width: 14),

                      /// SEARCH BAR
                      Expanded(
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.white70,
                              ),
                              hintText: "Search for Name, ID",
                              hintStyle: GoogleFonts.inter(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// USER LIST
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 6),
                  itemCount: users.length,

                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 1,
                        color: const Color(0xFFD2489A).withOpacity(0.7),
                      ),
                    );
                  },

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 8,
                      ),

                      child: Row(
                        children: [
                          /// PROFILE IMAGE
                          Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(users[index]["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          /// USER DETAILS
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                users[index]["name"]!,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              const SizedBox(height: 1),

                              Text(
                                "ID: ${users[index]["id"]}",
                                style: GoogleFonts.inter(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
