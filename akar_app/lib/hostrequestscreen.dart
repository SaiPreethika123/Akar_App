import 'package:akar_app/hostlivescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hostrequestscreen extends StatefulWidget {
  const Hostrequestscreen({super.key});

  @override
  State<Hostrequestscreen> createState() => _HostrequestscreenState();
}

class _HostrequestscreenState extends State<Hostrequestscreen> {
  String selectedTopic = "Other";

  final List<String> topics = [
    "Movie",
    "Serial",
    "Music",
    "Game",
    "Love",
    "News",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// BACKGROUND
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
              /// HEADER
              Container(
                height: 110,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF8F0F5D), Color(0xFF2E001A)],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -10,
                      top: 45,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 15, // move text downward
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          "Host Request",
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
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Topic",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),

                      const SizedBox(height: 12),

                      Wrap(
                        spacing: 8,
                        runSpacing: 10,
                        children: topics.map((topic) {
                          final isSelected = selectedTopic == topic;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTopic = topic;
                              });
                            },

                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),

                                gradient: isSelected
                                    ? const LinearGradient(
                                        colors: [
                                          Color(0xFFB1187B),
                                          Color(0xFF3A0327),
                                        ],
                                      )
                                    : null,

                                color: isSelected ? null : Colors.white,

                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),

                              child: Text(
                                topic,
                                style: GoogleFonts.inter(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),

                      const SizedBox(height: 18),

                      Text(
                        "Topic Name",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                        ),

                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Topic Name",
                            hintStyle: GoogleFonts.inter(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      Text(
                        "Language",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                        ),

                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: "Select Language",

                            items:
                                [
                                  "Select Language",
                                  "English",
                                  "Hindi",
                                  "Telugu",
                                ].map((e) {
                                  return DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: GoogleFonts.inter(fontSize: 13),
                                    ),
                                  );
                                }).toList(),

                            onChanged: (v) {},
                          ),
                        ),
                      ),

                      const Spacer(),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hostlivescreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 52,
                          width: double.infinity,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),

                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFB11A7B), Color(0xFF3A0427)],
                            ),
                          ),

                          child: Center(
                            child: Text(
                              "Submit Request",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),
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
