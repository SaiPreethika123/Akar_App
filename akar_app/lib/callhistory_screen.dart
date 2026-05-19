import 'package:flutter/material.dart';

class CallhistoryScreen extends StatelessWidget {
  const CallhistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calls = [
      {
        "name": "Sarah Johnson",
        "time": "Today, 2:45 PM",
        "duration": "12 mins",
        "amount": "- 450",
        "type": "video",
        "image": "assets/images/girl1.png",
      },
      {
        "name": "Michael Chen",
        "time": "Today, 11:20 AM",
        "duration": "Missed",
        "amount": "",
        "type": "audio",
        "image": "assets/images/girl2.png",
      },
      {
        "name": "Emma Williams",
        "time": "Yesterday, 6:15 PM",
        "duration": "5 mins",
        "amount": "- 400",
        "type": "video",
        "image": "assets/images/girl3.png",
      },
      {
        "name": "David Martinez",
        "time": "Yesterday, 3:30 PM",
        "duration": "8 mins",
        "type": "audio",
        "amount": "- 500",
        "image": "assets/images/girl4.png",
      },
      {
        "name": "Lisa Anderson",
        "time": "Dec 28, 10:45 AM",
        "duration": "3 mins",
        "type": "video",
        "amount": "-1450",
        "image": "assets/images/girl5.png",
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/backgroundimage.png",
              fit: BoxFit.cover,
            ),
          ),

          Container(color: Colors.white.withOpacity(.90)),

          Column(
            children: [
              // HEADER
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 140,
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 12, left: 16, right: 16),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Call History",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),

                  // SEARCH
                  Positioned(
                    bottom: -28,
                    left: 14,
                    right: 14,
                    child: Container(
                      height: 58,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.08),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey.shade400),

                          const SizedBox(width: 8),

                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search by name or number",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [Color(0xffA1196A), Color(0xff3B001F)],
                              ),
                            ),
                            child: const Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 45),

              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  itemCount: calls.length,
                  itemBuilder: (context, index) {
                    final item = calls[index];

                    return Container(
                      margin: const EdgeInsets.only(bottom: 14),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage(
                                  item["image"].toString(),
                                ),
                              ),

                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: item["duration"] == "Missed"
                                        ? Colors.red
                                        : Colors.green,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(
                                    item["duration"] == "Missed"
                                        ? Icons.call
                                        : Icons.call,
                                    color: Colors.white,
                                    size: 8,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item["name"].toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xff111827),
                                        ),
                                      ),
                                    ),

                                    item["amount"].toString().isNotEmpty
                                        ? Container(
                                            height: 32,
                                            width: 87,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 6,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                color: Colors.grey.shade300,
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Icon(
                                                  Icons.monetization_on,
                                                  color: Colors.amber,
                                                  size: 18,
                                                ),

                                                const SizedBox(width: 4),

                                                Text(
                                                  item["amount"].toString(),
                                                  style: const TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        : Container(
                                            height: 42,
                                            width: 42,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.grey.shade300,
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.call,
                                              color: Colors.green,
                                            ),
                                          ),
                                  ],
                                ),

                                const SizedBox(height: 4),

                                Row(
                                  children: [
                                    Icon(
                                      item["type"] == "video"
                                          ? Icons.videocam
                                          : Icons.call,
                                      color: item["type"] == "video"
                                          ? const Color(0xffA855F7)
                                          : const Color(0xffA855F7),
                                      size: 14,
                                    ),

                                    const SizedBox(width: 4),

                                    Text(
                                      item["time"].toString(),
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff6B7280),
                                      ),
                                    ),

                                    const Text("  •  "),

                                    Text(
                                      item["duration"].toString(),
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: item["duration"] == "Missed"
                                            ? Colors.red
                                            : const Color(0xff6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
