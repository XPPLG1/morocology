import 'package:flutter/material.dart';

class TravelPackageDetailScreen extends StatefulWidget {
  const TravelPackageDetailScreen({super.key});

  @override
  State<TravelPackageDetailScreen> createState() =>
      _TravelPackageDetailScreenState();
}

class _TravelPackageDetailScreenState
    extends State<TravelPackageDetailScreen>
    with SingleTickerProviderStateMixin {

  int expandedDay = -1;

  final Color primaryColor = const Color(0xFFB08968);
  final Color backgroundColor = const Color(0xFFF8F5F2);

  final List<Map<String, dynamic>> itinerary = [
    {
      "day": 1,
      "title": "Arrival & Welcome",
      "activities": [
        "Airport pickup and transfer to hotel",
        "Welcome mint tea and Moroccan pastries",
        "Hotel orientation and spa tour",
        "Evening welcome dinner"
      ]
    },
    {
      "day": 2,
      "title": "Marrakech Medina Exploration",
      "activities": [
        "Guided medina tour",
        "Visit Bahia Palace",
        "Souk shopping experience"
      ]
    },
    {
      "day": 3,
      "title": "Spa & Relaxation Day",
      "activities": [
        "Traditional hammam",
        "Full body massage",
        "Poolside relaxation"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHero(),
                _buildContent(),
              ],
            ),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  // ================= HERO =================

  Widget _buildHero() {
    return Stack(
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b",
          height: 320,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 320,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              _circleIcon(Icons.arrow_back,
                  () => Navigator.pop(context)),
              Row(
                children: [
                  _circleIcon(Icons.favorite_border, () {}),
                  const SizedBox(width: 10),
                  _circleIcon(Icons.share, () {}),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  // ================= MAIN CONTENT =================

  Widget _buildContent() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(28)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Grand Mogador Menara & Spa",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Icon(Icons.location_on,
                  size: 16, color: Colors.grey),
              SizedBox(width: 6),
              Text("Marrakech, Morocco",
                  style:
                      TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 14),
          const Row(
            children: [
              Icon(Icons.schedule,
                  size: 16, color: Colors.brown),
              SizedBox(width: 6),
              Text("7 Days / 6 Nights"),
              SizedBox(width: 20),
              Icon(Icons.star,
                  size: 16, color: Colors.amber),
              SizedBox(width: 6),
              Text("4.8 (342 reviews)"),
            ],
          ),
          const SizedBox(height: 30),

          // Overview
          const Text("Overview",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          const Text(
            "Experience the ultimate luxury at Grand Mogador Menara & Spa, a 5-star oasis in the heart of Marrakech.",
            style: TextStyle(color: Colors.grey),
          ),

          const SizedBox(height: 30),

          // Included
          const Text("What's Included",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 14),
          _buildIncluded("6 nights in Deluxe Room"),
          _buildIncluded("Daily breakfast buffet"),
          _buildIncluded("3 spa treatments"),
          _buildIncluded("Guided medina tour"),

          const SizedBox(height: 30),

          // Itinerary
          const Text("Day-by-Day Itinerary",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 16),
          ...itinerary
              .asMap()
              .entries
              .map((entry) =>
                  _buildItineraryItem(entry.key, entry.value))
              ,

          const SizedBox(height: 30),

          // Pricing
          _buildPricingSection(),

          const SizedBox(height: 30),

          // Reviews
          _buildReviewsSection(),
        ],
      ),
    );
  }

  // ================= INCLUDED =================

  Widget _buildIncluded(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check,
                size: 14, color: Colors.white),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  // ================= ANIMATED ITINERARY =================

  Widget _buildItineraryItem(
      int index, Map<String, dynamic> item) {
    final isExpanded = expandedDay == index;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F3EE),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                expandedDay =
                    isExpanded ? -1 : index;
              });
            },
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: primaryColor,
                  child: Text("${item["day"]}",
                      style: const TextStyle(
                          color: Colors.white)),
                ),
                const SizedBox(width: 12),
                Expanded(
                    child: Text(item["title"],
                        style: const TextStyle(
                            fontWeight:
                                FontWeight.w600))),
                Icon(isExpanded
                    ? Icons.expand_less
                    : Icons.expand_more)
              ],
            ),
          ),
          AnimatedCrossFade(
            firstChild: const SizedBox(),
            secondChild: Column(
              children: item["activities"]
                  .map<Widget>((a) => Padding(
                        padding:
                            const EdgeInsets.only(
                                top: 8),
                        child: Row(
                          children: [
                            const Text("• "),
                            Expanded(child: Text(a)),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration:
                const Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }

  // ================= PRICING =================

  Widget _buildPricingSection() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        const Text("Pricing Breakdown",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 14),
        _priceRow("Base Package",
            "IDR 45,000,000"),
        _priceRow("Taxes & Fees",
            "IDR 4,500,000"),
        _priceRow("Service Fee",
            "IDR 3,000,000"),
        const Divider(height: 30),
        _priceRow("Total",
            "IDR 52,500,000",
            isTotal: true),
      ],
    );
  }

  Widget _priceRow(String title, String price,
      {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: isTotal
                      ? FontWeight.bold
                      : FontWeight.normal)),
          Text(price,
              style: TextStyle(
                  fontWeight: isTotal
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: isTotal
                      ? primaryColor
                      : Colors.black)),
        ],
      ),
    );
  }

  // ================= REVIEWS =================

  Widget _buildReviewsSection() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: const [
        Text("Guest Reviews",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 14),
        _ReviewCard(
            name: "Sarah M.",
            review:
                "Absolutely magical experience!"),
        _ReviewCard(
            name: "Ahmed K.",
            review:
                "The spa treatments were world-class."),
      ],
    );
  }

  Widget _buildBottomBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color:
                  Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            const Text("IDR 52,500,000",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding:
                    const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14),
                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(22),
                ),
              ),
              onPressed: () {},
              child: const Text("Book Now"),
            )
          ],
        ),
      ),
    );
  }

  Widget _circleIcon(
      IconData icon,
      VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white
              .withOpacity(0.9),
          shape: BoxShape.circle,
        ),
        child: Icon(icon,
            size: 20),
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final String name;
  final String review;

  const _ReviewCard(
      {required this.name,
      required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(bottom: 14),
      padding:
          const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F3EE),
        borderRadius:
            BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(name,
              style: const TextStyle(
                  fontWeight:
                      FontWeight.w600)),
          const SizedBox(height: 6),
          Text(review),
        ],
      ),
    );
  }
}