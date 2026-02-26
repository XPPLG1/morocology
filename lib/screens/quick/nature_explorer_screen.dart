import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class NatureExplorerScreen extends StatefulWidget {
  const NatureExplorerScreen({super.key});

  @override
  State<NatureExplorerScreen> createState() =>
      _NatureExplorerScreenState();
}

class _NatureExplorerScreenState
    extends State<NatureExplorerScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F3EF),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildTabBar(),
            Expanded(
              child: selectedTab == 0
                  ? _buildGeography()
                  : _buildMap(),
            ),
          ],
        ),
      ),
    );
  }

  // ================= HEADER =================

  Widget _buildHeader() {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          const Expanded(
            child: Text(
              "Nature Explorer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }

  // ================= TAB =================

  Widget _buildTabBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 20),
      child: Container(
        height: 52,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: const Color(0xFFE5E2DD),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            _tabItem("Geography", 0),
            _tabItem("Map", 1),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(String title, int index) {
    final isSelected = selectedTab == index;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xFFB08968)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black87,
            ),
          ),
        ),
      ),
    );
  }

  // ================= GEOGRAPHY =================

Widget _buildGeography() {
  return SingleChildScrollView(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),

        _buildHeroCard(),
        const SizedBox(height: 28),

        const Text(
          "Major Geographic Regions",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        _buildRegionCard(
          image:
              "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
          title: "Atlas Mountains",
          subtitle:
              "North Africa’s highest mountain range spanning 2,500 km across Morocco.",
        ),

        _buildRegionCard(
          image:
              "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
          title: "Sahara Desert",
          subtitle:
              "World’s largest hot desert covering southern Morocco.",
        ),

        _buildRegionCard(
          image:
              "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
          title: "Atlantic Coast",
          subtitle:
              "1,835 km coastline featuring beaches and fishing ports.",
        ),

        const SizedBox(height: 28),

        _buildClimateZones(),
        const SizedBox(height: 28),

        _buildKeyFacts(),
        const SizedBox(height: 40),
      ],
    ),
  );
}

Widget _buildHeroCard() {
  return Container(
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color(0xFFE6D5C3),
          Color(0xFFD6C3B3),
        ],
      ),
      borderRadius: BorderRadius.circular(22),
    ),
    child: const Column(
      children: [
        Icon(Icons.public, size: 42),
        SizedBox(height: 12),
        Text(
          "Morocco's Geographic Diversity",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "From snow-capped mountains to golden deserts, Morocco spans 710,850 km² of diverse landscapes.",
          textAlign: TextAlign.center,
          style: TextStyle(height: 1.5),
        ),
      ],
    ),
  );
}

Widget _buildRegionCard({
  required String image,
  required String title,
  required String subtitle,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(22),
          ),
          child: Image.network(
            image,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
  // ================= CLIMATE =================

  Widget _buildClimateZones() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Climate Zones",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 18),
          _ProgressRow("Mediterranean", 0.4, Color(0xFF4A90E2)),
          _ProgressRow("Semi-Arid", 0.3, Color(0xFFF5A623)),
          _ProgressRow("Desert", 0.25, Color(0xFFF8C12D)),
          _ProgressRow("Alpine", 0.05, Color(0xFF9B9B9B)),
        ],
      ),
    );
  }

  // ================= KEY FACTS =================

  Widget _buildKeyFacts() {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xFFDCE3E7),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Key Geographic Facts",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _FactRow(Icons.square_foot, "Total Area", "710,850 km²"),
          SizedBox(height: 14),
          _FactRow(Icons.waves, "Coastline", "1,835 km"),
          SizedBox(height: 14),
          _FactRow(Icons.terrain, "Highest Point", "Toubkal 4,167m"),
          SizedBox(height: 14),
          _FactRow(Icons.water_drop, "Major Rivers",
              "5 (Moulouya, Sebou, etc.)"),
        ],
      ),
    );
  }

  // ================= MAP =================

  Widget _buildMap() {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(31.7917, -7.0926),
        initialZoom: 6,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://tile.openstreetmap.de/{z}/{x}/{y}.png',
          userAgentPackageName: 'morocology.app',
        ),
      ],
    );
  }
}

class _ProgressRow extends StatelessWidget {
  final String title;
  final double value;
  final Color color;

  const _ProgressRow(this.title, this.value, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text("${(value * 100).toInt()}%"),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: value,
            minHeight: 8,
            borderRadius: BorderRadius.circular(10),
            backgroundColor: const Color(0xFFE7E3DE),
            valueColor: AlwaysStoppedAnimation(color),
          ),
        ],
      ),
    );
  }
}

class _FactRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _FactRow(this.icon, this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 20),
        ),
        const SizedBox(width: 14),
        Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}