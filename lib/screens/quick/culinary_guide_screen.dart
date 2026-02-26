import 'package:flutter/material.dart';

class CulinaryGuideScreen extends StatefulWidget {
  const CulinaryGuideScreen({super.key});

  @override
  State<CulinaryGuideScreen> createState() => _CulinaryGuideScreenState();
}

class _CulinaryGuideScreenState extends State<CulinaryGuideScreen> {
  String selectedFilter = "All";

  final List<Map<String, dynamic>> recipes = [
    {
      "title": "Maakouda",
      "description":
          "Crispy Moroccan potato fritters seasoned with cumin, paprika, and fresh herbs.",
      "category": "Vegetarian",
      "difficulty": "Easy",
      "time": "25 min",
      "servings": "4 servings",
      "image": "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d",
    },
    {
      "title": "Lamb Tagine With Prunes",
      "description":
          "Crispy Moroccan potato fritters seasoned with cumin, paprika, and fresh herbs.",
      "category": "Gluten-Free",
      "difficulty": "Medium",
      "time": "2 hrs 30 min",
      "servings": "6 servings",
      "image": "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d",
    },
    {
      "title": "Maghrebi Mint Tea",
      "description":
          "Crispy Moroccan potato fritters seasoned with cumin, paprika, and fresh herbs.",
      "category": "Vegetarian",
      "difficulty": "Easy",
      "time": "15 min",
      "servings": "3 servings",
      "image": "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredRecipes = selectedFilter == "All"
        ? recipes
        : recipes.where((r) => r["category"] == selectedFilter).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: SafeArea(
        child: Column(
          children: [
            /// HEADER !!!
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F5F2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 15,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Moroccan Cuisine",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2E2E2E),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Authentic recipes from Morocco's culinary heritage",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),

            /// CONTENT !!!
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    /// FILTER CHIPS
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildChip("All"),
                          _buildChip("Vegetarian"),
                          _buildChip("Gluten-Free"),
                          _buildChip("Spicy"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    /// RECIPE LIST
                    ...filteredRecipes.map(
                      (recipe) =>
                          _buildRecipeCard(recipe)
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// =================== CHIP ====================

  Widget _buildChip(String label) {
    final bool selected = selectedFilter == label;

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedFilter = label;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: selected
                ? const Color(0xFFB09868)
                : Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: selected
                  ? const Color(0xFFB09868)
                  : Colors.grey.shade300,
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: selected
                  ? Colors.white
                  : const Color(0xFF2E2E2E),
              fontWeight:
                FontWeight.w500,
            ),
          ),
        )
      ),
    );
  }

  /// ================= CARD ==================
  Widget _buildRecipeCard(
    Map<String, dynamic> recipe) {
      return Container(
        margin:
            const EdgeInsets.only(bottom: 22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 
              BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// IMAGE
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.network(
                    recipe["image"],
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  top: 14,
                  right: 14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB09868),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      recipe["category"] ?? "",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
                ),

                /// CONTENT
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// TIME & SERVINGS
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 16,
                            color: Colors.grey),
                            const SizedBox(
                              width: 6),
                              Text(
                                recipe["time"] ?? "",
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                Icons.restaurant,
                                size: 16,
                                color: Colors.grey),
                                const SizedBox(
                                  width: 6),
                                  Text(
                                    recipe["servings"] ?? "",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const Spacer(),

                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: recipe[
                                        "difficulty"] == "Easy"
                                          ? const Color(0xFF6BAA75)
                                          : const Color(0xFFE6A34D),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      recipe["difficulty"] ?? "",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                        ],
                      ),

                      const SizedBox(height: 14),

                      Text(
                        recipe["title"] ?? "",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        recipe["description"] ?? "",
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        );
    }
}
