import 'package:flutter/material.dart';
import 'package:morocology/screens/quick/nature_explorer_screen.dart';
import 'package:morocology/screens/quick/famous_destinations_screen.dart';
import 'package:morocology/screens/quick/famous_people_screen.dart';
import 'package:morocology/screens/quick/cultural_event_screen.dart';
import '../../models/destination_model.dart';
import '../../core/widgets/destination_card.dart';
import '../../core/widgets/quick_access_item.dart';
import 'package:morocology/core/widgets/discover_morocco.dart';
import 'package:morocology/screens/quick/culinary_guide_screen.dart';
import 'package:morocology/screens/quick/travel_package_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<Destination> destinations = [
    Destination(
      title: "Marrakesh",
      subtitle:
          "The Red City - A vibrant blend of ancient medinas and modern luxury",
      image: "assets/images/marrakesh.jpg",
      bestTime: "Best: October - April",
    ),
    Destination(
      title: "Fes",
      subtitle:
          "Cultural Heart - Home to the world's oldest university and medieval medina",
      image: "assets/images/fes.jpg",
      bestTime: "Best: March - May, September - November",
    ),
    Destination(
      title: "Chefchaouen",
      subtitle:
          "The Blue Pearl - Morocco's stunning blue-washed mountain village",
      image: "assets/images/chefhaouen.jpg",
      bestTime: "Best: March - October",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset("assets/images/morocco_flag.png", height: 28),
                    const SizedBox(width: 10),
                    const Text(
                      "Morocology",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFB08968),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.search),
                  ],
                ),
              ),

              /// FEATURED
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Featured Destinations",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                height: 220,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: destinations.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return DestinationCard(destination: destinations[index]);
                  },
                ),
              ),

              const SizedBox(height: 14),

              /// DOT INDICATOR
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(destinations.length, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: currentIndex == index ? 24 : 8,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? const Color(0xFFB08968)
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 28),

              /// QUICK ACCESS !!!
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Quick Access",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  children: [
                    QuickAccessItem(
                      icon: Icons.location_city,
                      title: "Famous Destinations",
                      iconColor: Color(0xFFB08968),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const FamousDestinationsScreen(),
                          ),
                        );
                      },
                    ),
                    QuickAccessItem(
                      icon: Icons.work,
                      title: "Travel Packages",
                      iconColor: Colors.brown,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TravelPackageDetailScreen(),
                          ),
                        );
                      },
                    ),
                    QuickAccessItem(
                      icon: Icons.restaurant,
                      title: "Culinary Guide",
                      iconColor: Colors.teal,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CulinaryGuideScreen(),
                          ),
                        );
                      },
                    ),
                    QuickAccessItem(
                      icon: Icons.landscape,
                      title: "Nature Explorer",
                      iconColor: Colors.green,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const NatureExplorerScreen(),
                          ),
                        );
                      },
                    ),
                    QuickAccessItem(
                      icon: Icons.people,
                      title: "Famous People",
                      iconColor: Colors.orange,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const FamousPeopleScreen(),
                          ),
                        );
                      },
                    ),
                    QuickAccessItem(
                      icon: Icons.event,
                      title: "Cultural Event",
                      iconColor: Colors.amber,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CulturalEventScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const DiscoverMorocco(),

              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
