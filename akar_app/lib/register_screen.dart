import 'package:akar_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  /// FORM CONTROLLERS
  final TextEditingController nameController = TextEditingController();

  final TextEditingController dobController = TextEditingController();

  final TextEditingController bioController = TextEditingController();

  String? selectedGender;
  String? selectedCountry;
  String? selectedLanguage;

  /// SCREEN CHANGE
  bool isHobbiesScreen = false;

  /// HOBBIES
  List<String> selectedHobbies = [];

  List<String> hobbies = [
    "Art 🎨",
    "Board Games ♟️",
    "Cooking 🍳",
    "Dancing 💃",
    "Fitness 🏋️",
    "Gaming 🎮",
    "Hiking 🥾",
    "Motorcycling 🏍️",
    "Movies 🎬",
    "Music 🎵",
    "Pets 🐶",
    "Photography 📷",
    "Reading 📖",
    "Sports 🏀",
    "Singing 🎤",
    "Tourism 🗺️",
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          /// DARK OVERLAY
          Container(color: Colors.black.withOpacity(0.20)),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),

                child: !isHobbiesScreen
                    /// =========================
                    /// FORM SCREEN
                    /// =========================
                    ? Column(
                        key: const ValueKey(1),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),

                          /// TOP BAR
                          Row(
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

                              Expanded(
                                child: Center(
                                  child: Text(
                                    "Identify Your Self",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 18),
                            ],
                          ),

                          const SizedBox(height: 30),

                          /// SUBTITLE
                          Center(
                            child: Text(
                              "Introduce Yourself fill out the details so\nPeople know about you",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          const SizedBox(height: 28),

                          /// FULL NAME
                          buildLabel("Full Name *"),

                          const SizedBox(height: 8),

                          buildTextField(
                            controller: nameController,
                            hint: "Enter Full Name",
                          ),

                          const SizedBox(height: 18),

                          /// GENDER
                          buildLabel("Gender *"),

                          const SizedBox(height: 8),

                          buildDropdown(
                            value: selectedGender,
                            hint: "Select Your Gender",
                            items: ["Male", "Female", "Other"],
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                          ),

                          const SizedBox(height: 18),

                          /// DOB
                          buildLabel("DOB*"),

                          const SizedBox(height: 8),

                          buildTextField(
                            controller: dobController,
                            hint: "DD/MM/YY",
                          ),

                          const SizedBox(height: 18),

                          /// COUNTRY
                          buildLabel("Country*"),

                          const SizedBox(height: 8),

                          buildDropdown(
                            value: selectedCountry,
                            hint: "Select Country",
                            items: ["India", "USA", "UK"],
                            onChanged: (value) {
                              setState(() {
                                selectedCountry = value;
                              });
                            },
                          ),

                          const SizedBox(height: 18),

                          /// LANGUAGE
                          buildLabel("Language*"),

                          const SizedBox(height: 8),

                          buildDropdown(
                            value: selectedLanguage,
                            hint: "Select Language",
                            items: ["English", "Hindi", "Telugu"],
                            onChanged: (value) {
                              setState(() {
                                selectedLanguage = value;
                              });
                            },
                          ),

                          const SizedBox(height: 18),

                          // /// BIO
                          // buildLabel("Bio*"),

                          // const SizedBox(height: 8),

                          // Container(
                          //   height: 95,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(6),
                          //     border: Border.all(color: Colors.white70),
                          //   ),
                          //   child: TextField(
                          //     controller: bioController,
                          //     maxLines: null,
                          //     style: GoogleFonts.inter(color: Colors.white),
                          //     decoration: InputDecoration(
                          //       contentPadding: const EdgeInsets.all(14),
                          //       border: InputBorder.none,
                          //       hintText: "Ex: I’m a beautiful",
                          //       hintStyle: GoogleFonts.inter(
                          //         color: Colors.white70,
                          //         fontSize: 14,
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          const SizedBox(height: 35),

                          /// CONTINUE BUTTON
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isHobbiesScreen = true;
                                });
                              },
                              child: Container(
                                height: 46,
                                width: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF992870),
                                      Color(0xFF330D25),
                                    ],
                                  ),
                                  border: Border.all(color: Colors.white70),
                                ),
                                child: Center(
                                  child: Text(
                                    "Continue",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),
                        ],
                      )
                    /// =========================
                    /// HOBBIES SCREEN
                    /// =========================
                    : Column(
                        key: const ValueKey(2),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),

                          /// BACK BUTTON
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isHobbiesScreen = false;
                              });
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),

                          const SizedBox(height: 35),

                          /// TITLE
                          Text(
                            "Share your Hobbies 🫶",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 10),

                          /// DESCRIPTION
                          Text(
                            "Select a few of your interests and let\neveryone know what you’re passionate\nabout.",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),

                          const SizedBox(height: 24),

                          /// TOP TEXT
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Select up to 5 hobbies",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              Text(
                                "${selectedHobbies.length} out of 5 selected",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.white70,
                          ),

                          const SizedBox(height: 14),

                          /// HOBBIES
                          Wrap(
                            spacing: 8,
                            runSpacing: 10,
                            children: hobbies.map((hobby) {
                              bool isSelected = selectedHobbies.contains(hobby);

                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isSelected) {
                                      selectedHobbies.remove(hobby);
                                    } else {
                                      if (selectedHobbies.length < 5) {
                                        selectedHobbies.add(hobby);
                                      }
                                    }
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.white70),
                                  ),
                                  child: Text(
                                    hobby,
                                    style: GoogleFonts.poppins(
                                      color: isSelected
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),

                          const SizedBox(height: 40),

                          /// SUBMIT BUTTON
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 55,
                                width: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF992870),
                                      Color(0xFF330D25),
                                    ],
                                  ),
                                  border: Border.all(color: Colors.white70),
                                ),
                                child: Center(
                                  child: Text(
                                    'Submit',
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// LABEL
  Widget buildLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  /// TEXTFIELD
  Widget buildTextField({
    required TextEditingController controller,
    required String hint,
  }) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.white70),
      ),
      child: TextField(
        controller: controller,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 14,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: GoogleFonts.poppins(color: Colors.white70, fontSize: 14),
        ),
      ),
    );
  }

  /// DROPDOWN
  Widget buildDropdown({
    required String? value,
    required String hint,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.white70),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          dropdownColor: const Color(0xFF7C4B68),
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          hint: Text(
            hint,
            style: GoogleFonts.poppins(color: Colors.white70, fontSize: 14),
          ),
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 14),
          isExpanded: true,
          items: items.map((item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
