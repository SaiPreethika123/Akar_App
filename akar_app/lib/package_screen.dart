import 'package:akar_app/package_purchase_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageScreen extends StatefulWidget {
  PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  bool isPopular = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 Background
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/backgroundimage.png",
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 Content
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  /// 🔝 TOP BAR
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),

                        /// Coins
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF15CBB).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Text("🪙"),
                              const SizedBox(width: 6),
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
                      ],
                    ),
                  ),

                  /// 🔻 BODY SCROLL
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),

                          /// 🔘 Buy Coins
                          Center(child: pillTitle("✨Buy Coins✨")),

                          const SizedBox(height: 20),

                          /// CARD 1
                          coinCard(
                            coins: "340 Coins",
                            oldPrice: "₹500",
                            discount: "10% OFF",
                            price: "₹450",
                          ),

                          const SizedBox(height: 16),

                          /// CARD 2
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              coinCard(
                                coins: "850 Coins",
                                oldPrice: "₹1200",
                                discount: "25% OFF",
                                price: "₹900",
                                isPopular: true,
                              ),
                              Positioned(
                                top: -8,
                                left: 16,
                                child: badge("MOST POPULAR"),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          /// CARD 3
                          coinCard(
                            coins: "1,750 Coins",
                            oldPrice: "₹2500",
                            discount: "20% OFF",
                            price: "₹2000",
                          ),

                          const SizedBox(height: 24),

                          /// 🔘 Best Deals
                          Container(
                            height: 44,
                            width: 244,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              ),
                              // gradient: const LinearGradient(
                              //   colors: [Color(0xFFE08BB5), Color(0xFFB46AA0)],
                              // ),
                            ),
                            child: Center(
                              child: Text(
                                "✨Best Value Deals✨",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          /// 🔥 BIG CARD
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(
                                color: Color(0xffFF4D8D),
                                width: 1.5,
                              ),
                            ),
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Color(0xFF3A2A00),
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.yellow,
                                    size: 28,
                                  ),
                                ),

                                const SizedBox(height: 14),

                                Text(
                                  "10,000 Coins",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 6),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "₹12,000",
                                      style: GoogleFonts.inter(
                                        color: Colors.white54,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    badge("35% OFF"),
                                  ],
                                ),

                                SizedBox(height: 6),

                                Text(
                                  "You save ₹4,200",
                                  style: GoogleFonts.inter(
                                    color: Colors.green,
                                    fontSize: 12,
                                  ),
                                ),

                                const SizedBox(height: 18),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 0.7,
                                    ),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF992870), // top color
                                        Color(0xFF330D25), // bottom color
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    "₹7,800",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 30),
                        ],
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

  /// 🔹 COIN CARD
  Widget coinCard({
    required String coins,
    required String oldPrice,
    required String discount,
    required String price,
    bool isPopular = false, // ✅ ADD THIS
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PackagePurchaseScreen(
              coins: coins,
              price: price,
              oldPrice: oldPrice,
              discount: discount,
            ),
          ),
        );
      },

      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xFF0E0E2C),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFF3A2A00),
                  child: Icon(
                    Icons.monetization_on,
                    color: Colors.yellow,
                    size: 28,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coins,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          oldPrice,
                          style: GoogleFonts.inter(
                            color: Colors.white54,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 6),
                        badge(discount),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                gradient: isPopular
                    ? const LinearGradient(
                        colors: [Color(0xFF7B61FF), Color(0xFFFF4D8D)],
                      )
                    : null,

                color: !isPopular
                    ? const Color(0xffFF43BB).withOpacity(0.8)
                    : null,

                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                price,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 BADGE
  Widget badge(String text) {
    return Container(
      height: 24,

      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Color(0xffFF4D8D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// 🔹 TITLE PILL
  Widget pillTitle(String text) {
    return Container(
      height: 44,
      width: 192,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black, width: 1.5),
        // gradient:  LinearGradient(
        //   colors: [Color(0xFFE08BB5), Color(0xFFB46AA0)],
        // ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
