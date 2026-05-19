import 'dart:ui';
import 'package:flutter/material.dart';

class LanguageprofileScreen extends StatefulWidget {
  const LanguageprofileScreen({super.key});

  @override
  State<LanguageprofileScreen> createState() => _LanguageprofileScreenState();
}

class _LanguageprofileScreenState extends State<LanguageprofileScreen> {
  int selectedIndex = 2;

  final List<Map<String, String>> languages = [
    {"title": "Arabic", "sub": "العربية", "flag": "🇸🇦"},
    {"title": "Chinese", "sub": "中文", "flag": "🇨🇳"},
    {"title": "Hindi", "sub": "हिंदी", "flag": "🇮🇳"},
    {"title": "Italian", "sub": "Italiano", "flag": "🇮🇹"},
    {"title": "Japanese", "sub": "日本語", "flag": "🇯🇵"},
    {"title": "Korean", "sub": "한국어", "flag": "🇰🇷"},
    {"title": "Portuguese", "sub": "Português", "flag": "🇵🇹"},
    {"title": "Russian", "sub": "Русский", "flag": "🇷🇺"},
  ];

  // ADD THIS CONTROLLER
  TextEditingController searchController = TextEditingController();

  // ADD THIS LIST
  List<Map<String, String>> filteredLanguages = [];

  @override
  void initState() {
    super.initState();

    filteredLanguages = languages;

    searchController.addListener(() {
      filterLanguages();
    });
  }

  // FILTER FUNCTION
  void filterLanguages() {
    String query = searchController.text.toLowerCase();

    setState(() {
      filteredLanguages = languages.where((language) {
        return language["title"]!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND IMAGE
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/backgroundimage.png",
              fit: BoxFit.cover,
            ),
          ),

          // LIGHT OVERLAY
          Container(color: Colors.black.withOpacity(.15)),

          Column(
            children: [
              // TOP HEADER STARTING FROM TOP
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // GRADIENT HEADER
                  Container(
                    height: 197,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffB2287A),
                          Color(0xff6D003C),
                          Color(0xff2A0018),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 71),

                        // APPBAR
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
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

                              const Spacer(),

                              const Text(
                                "App Language",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              const Spacer(),
                            ],
                          ),
                        ),

                        const SizedBox(height: 14),

                        const Text(
                          "Choose your preferred language",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  // SEARCH BOX
                  Positioned(
                    bottom: -10,
                    left: 14,
                    right: 14,
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.12),
                            blurRadius: 15,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey.shade400,
                            size: 22,
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: TextField(
                              controller: searchController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search by Language",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 13,
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

              // SPACE ABOVE ALL LANGUAGES
              const SizedBox(height: 30),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "All Languages",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // LISTVIEW
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    final item = languages[index];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.95),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Text(
                              item["flag"]!,
                              style: const TextStyle(fontSize: 20),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["title"]!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),

                                  const SizedBox(height: 3),

                                  Text(
                                    item["sub"]!,
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: selectedIndex == index
                                      ? const Color(0xffA1196A)
                                      : Colors.grey.shade300,
                                  width: 2,
                                ),
                              ),
                              child: selectedIndex == index
                                  ? Center(
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffA1196A),
                                        ),
                                      ),
                                    )
                                  : null,
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
        ],
      ),
    );
  }
}
