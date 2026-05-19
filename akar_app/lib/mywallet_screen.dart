import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MywalletScreen extends StatelessWidget {
  MywalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      {
        "title": "Transaction Successful",
        "date": "Dec 28, 2024 • 10:30 AM",
        "amount": "- 450",
        "isCredit": false,
      },
      {
        "title": "Transaction Successful",
        "date": "Dec 27, 2024 • 06:15 PM",
        "amount": "- 250",
        "isCredit": false,
      },
      {
        "title": "Withdraw Successful",
        "date": "Dec 26, 2024 • 03:45 PM",
        "amount": "- 450",
        "isCredit": false,
      },
      {
        "title": "Recharge Successfully",
        "date": "Dec 25, 2024 • 11:20 AM",
        "amount": "+1450",
        "isCredit": true,
      },
      {
        "title": "Transaction Successful",
        "date": "Dec 25, 2024 • 11:20 AM",
        "amount": "- 350",
        "isCredit": false,
      },
      {
        "title": "Recharge Successfully",
        "date": "Dec 25, 2024 • 11:20 AM",
        "amount": "+1450",
        "isCredit": true,
      },
    ];

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

          // Container(color: Colors.white.withOpacity(.90)),
          Column(
            children: [
              // HEADER
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
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
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 20, // move text downward
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          "My Wallet",
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
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // WALLET CARD
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.05),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Available Coins",
                                      style: GoogleFonts.inter(
                                        color: Color(0xff6B7280),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    SizedBox(height: 4),

                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          const LinearGradient(
                                            colors: [
                                              Color(0xff992870),
                                              Color(0xff330D25),
                                            ],
                                          ).createShader(
                                            Rect.fromLTWH(
                                              0,
                                              0,
                                              bounds.width,
                                              bounds.height,
                                            ),
                                          ),
                                      child: Text(
                                        "2450",
                                        style: GoogleFonts.inter(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Spacer(),

                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: Color(0xffE5E7EB),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.amber,
                                    size: 28,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 18),

                            Container(
                              height: 48,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF992870),
                                    Color(0xFF330D25),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "With Draw",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 24),

                      Row(
                        children: [
                          Text(
                            "Recent Transactions",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),

                          Spacer(),

                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade300),
                              color: Colors.white.withOpacity(.90),
                            ),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              size: 18,
                            ),
                          ),
                        ],
                      ),

                      //  SizedBox(height: 10),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          final item = transactions[index];

                          return Container(
                            margin: EdgeInsets.only(bottom: 14),
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xffF589CE),
                                  Color(0xff821A5C),
                                  Color(0xff992870),
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: item["isCredit"] as bool
                                        ? Colors.green.shade100
                                        : Colors.red.shade100,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    item["isCredit"] as bool
                                        ? Icons.arrow_upward
                                        : Icons.arrow_downward,
                                    color: item["isCredit"] as bool
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),

                                SizedBox(width: 12),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["title"].toString(),
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),

                                      SizedBox(height: 4),

                                      Text(
                                        item["date"].toString(),
                                        style: GoogleFonts.inter(
                                          fontSize: 11,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  height: 32,
                                  // width: 80,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.monetization_on,
                                        color: Colors.amber,
                                        size: 18,
                                      ),

                                      const SizedBox(width: 3),

                                      Text(
                                        item["amount"].toString(),
                                        style: GoogleFonts.inter(
                                          color: item["isCredit"] as bool
                                              ? Colors.green
                                              : Colors.red,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
