import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackagePurchaseScreen extends StatefulWidget {
  final String coins;
  final String price;
  final String oldPrice;
  final String discount;

  const PackagePurchaseScreen({
    super.key,
    required this.coins,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });

  @override
  State<PackagePurchaseScreen> createState() => _PackagePurchaseScreenState();
}

class _PackagePurchaseScreenState extends State<PackagePurchaseScreen> {
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

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  /// 🔙 Back
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  /// 🪙 ICON
                  Image.asset(
                    "assets/images/coinimage.png",
                    height: 102,
                    width: 102,
                  ),

                  const SizedBox(height: 20),

                  /// 🔹 BALANCE
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF992870), Color(0xFF330D25)],
                      ),
                    ),
                    child: Text(
                      "Balance : ${widget.coins}",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// 🔥 SELECTED CARD
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E0E2C),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// LEFT SIDE
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xFF3A2A00),
                              child: Icon(
                                Icons.monetization_on,
                                color: Colors.yellow,
                              ),
                            ),
                            const SizedBox(width: 10),

                            /// TEXTS
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.coins,
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),

                                Row(
                                  children: [
                                    Text(
                                      widget.oldPrice,
                                      style: GoogleFonts.inter(
                                        color: Colors.white54,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(width: 6),

                                    /// DISCOUNT BADGE
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 6,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFF4D8D),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        widget.discount,
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        /// PRICE BUTTON
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF43BB), Color(0xFF7A1E58)],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            widget.price,
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

                  const SizedBox(height: 30),

                  /// OPTIONS TEXT
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Options For You",
                      style: GoogleFonts.inter(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// PHONEPE BUTTON
                  paymentButton("PhonePe", () {}),

                  const SizedBox(height: 12),

                  paymentButton("Google Pay", () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentButton(String paymentMethod, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF992870), Color(0xFF330D25)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons
                  .account_balance, // 🔁 change to PhonePe icon if you have asset
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              paymentMethod,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
