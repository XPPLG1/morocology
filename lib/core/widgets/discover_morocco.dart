import 'package:flutter/material.dart';

class DiscoverMorocco extends StatelessWidget {
  const DiscoverMorocco({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Discover Morocco",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 16),

        _buildCard(
          image: "assets/images/winter_morocco.jpg",
          tag: "Seasonal",
          title: "Winter in Morocco",
          subtitle: "Experience the magic of Morocco winters",
          description:
              "From snow-capped Atlas Mountains to warm coastal cities, discover Morocco's diverse winter landscapes and cultural celebrations.",
        ),

        const SizedBox(height: 20),

        _buildCard(
          image: "assets/images/music_festivals.jpg",
          tag: "Events",
          title: "Moroccan Festivals 2026",
          subtitle: "Celebrate culture and tradition",
          description:
              "Join vibrant festivals celebrating music, art, and heritage. From Gnaoua World Music Festival to Rose Festival in Kelaat M'Gouna.",
        ),

        const SizedBox(height: 20),

        _buildCard(
          image: "assets/images/sahara_adventure.jpg",
          tag: "Adventure",
          title: "Sahara Dessert Adventure",
          subtitle: "Journey into the golden dunes",
          description:
              "Experience camel treks, luxury desert camps, and breathtaking sunsets in the world's most iconic desert landscapes.",
        ),

        const SizedBox(height: 40),
      ],
    );
  }

  Widget _buildCard({
    required String image,
    required String tag,
    required String title,
    required String subtitle,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF4EFEA),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20)),
                    child: Image.asset(
                      image,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB08968),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                        color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                      ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Color(0xFFB09868),
                      fontWeight: FontWeight.w500
                      ),
                  ),

                  const SizedBox(height: 8),
                    
                  Text(
                    description,
                    style: const TextStyle(
                    color: Colors.black54
                    ),
                  ),

                  const SizedBox(height: 12),
                          
                  Text(
                        "Learn More →",
                        style: TextStyle(
                          color: Color(0xFFB09868),
                          fontWeight: FontWeight.w500),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
      );
  }
}
