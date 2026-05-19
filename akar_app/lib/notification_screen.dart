import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Notifications",
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8E0E5A), Color(0xFF5A0034)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: const [
          NotificationTile(
            title: "Limited-Time Offer 🎁",
            subtitle: "Get exclusive coin discounts today.\nDon’t miss out!",
            time: "03:42 PM  |  30.04.2021",
          ),
          NotificationTile(
            title: "New match request from Sansa",
            subtitle: "Sansa wants to connect with you. View profile now.",
            time: "11:13 AM  |  29.04.2021",
          ),
          NotificationTile(
            title: "Message From Ruby",
            subtitle:
                "You liked Ruby, check out what’s her response, keep dating..",
            time: "09:57 AM  |  29.04.2021",
          ),
          NotificationTile(
            title: "Big Discount, Hurry!",
            subtitle:
                "Season’s discount, only for you, put yourself in spotlight, enjoy dating.",
            time: "03:32 AM  |  30.04.2021",
          ),
          NotificationTile(
            title: "New proposal from Sansa Ben",
            subtitle:
                "Sansa has proposed you for going out to a nearest event on this weekend.",
            time: "10:57 AM  |  29.04.2021",
          ),
          NotificationTile(
            title: "It’s a match! 🎉",
            subtitle: "You both liked each other. Start chatting now.",
            time: "09:32 AM  |  30.04.2021",
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const NotificationTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Circular icon
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF8E0E5A), Color(0xFF5A0034)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(Icons.favorite, color: Colors.white),
              ),

              const SizedBox(width: 12),

              // Text content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      time,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Divider line
        Padding(
          padding: const EdgeInsets.only(left: 74),
          child: Divider(
            color: Color(0xffDFD2F3).withOpacity(0.75),
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
