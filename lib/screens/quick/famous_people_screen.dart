import 'package:flutter/material.dart';

class FamousPeopleScreen extends StatelessWidget {
  const FamousPeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> people = [
      {
        'name': 'Mohammed Hamri',
        'subtitle': 'PIONEER OF MODERN MOROCCAN ART',
        'image': 'assets/images/hamri.jpg',
        'short':
            'Mohamed Hamri (1932–2000) was a legendary Moroccan painter, restaurateur, and author who became a key figure in the Tangier Beat scene.',
        'full':
            'Mohamed Hamri (27 August 1932 – 29 August 2000) was a Moroccan painter, restaurateur, and author who famously described himself as "The Painter of Morocco." Born in Jajouka, a small village in northern Morocco near Ksar el-Kebir, Hamri grew up immersed in traditional Moroccan arts. His father was a ceramics artist who followed ancient painting traditions, while his mother belonged to the prestigious Attar family of Zahjouka musicians. His uncle led the legendary Master Musicians of Joujouka, a group with whom Hamri would maintain a lifelong association.\n\nHamri\'s artistic journey took a pivotal turn in 1950 when he encountered the American writer Paul Bowles in Tangier. Shortly after, he met Brion Gysin, who became his mentor and introduced him to the world of European modern art, including the works of Picasso, Dalí, and Braque. In 1953, Hamri held his first exhibition at the Hotel Rembrandt in Tangier, marking the beginning of a prolific career that would see his paintings exhibited across Morocco, Spain, Lebanon, the Canary Islands, Germany, the United States, the UK, and Ireland.\n\nBeyond painting, Hamri played a crucial role in promoting Moroccan music on the world stage. In 1954, he co-founded the legendary "1001 Nights Restaurant" in Tangier with Brion Gysin, where the Master Musicians of Joujouka performed nightly, captivating international audiences. Although the restaurant closed in 1958, Hamri\'s dedication to the musicians never wavered. In 1962, he founded the Association Serifiya Folklorique de Joujouka to preserve their heritage.\n\nOne of his most significant contributions was facilitating the 1968 recording session between the Master Musicians and Brian Jones of The Rolling Stones. This collaboration resulted in the groundbreaking 1971 album "Brian Jones Presents The Pipes Of Pan At Joujouka," and Hamri\'s painting of Brian Jones with the musicians graced the album\'s gatefold sleeve. He also arranged Ornette Coleman\'s historic 1973 visit to the village of Joujouka.\n\nAs an author, Hamri published "Tales of Joujouka" in 1975, a captivating collection of stories from his Sufi village that further cemented the cultural significance of Joujouka in world literature. From the 1980s onward, he divided his time between the cosmopolitan city of Tangier and his beloved village of Zahjouka.\n\nMohamed Hamri passed away on August 29, 2000, leaving behind a rich legacy as one of Morocco\'s most important cultural ambassadors. He is also remembered as the father of Sanaa Hamri, who became the first Moroccan woman to direct a Hollywood movie. His work continues to be celebrated, with paintings offered at auction fetching prices from hundreds to tens of thousands of dollars, a testament to his enduring artistic impact.',
      },
      {
        'name': 'Rachid Yazami',
        'subtitle': "THE WORLD'S ENERGY REVOLUTIONARY",
        'image': 'assets/images/yazami_real.png',
        'short':
            'Rachid Yazami is a renowned Moroccan scientist and inventor, known as the discoverer of the graphite anode that became the foundation of modern Lithium-ion batteries.',
        'full':
            'Rachid Yazami is a prominent Moroccan scientist and inventor who was born in the city of Fez in 1953. He is internationally recognized as one of the most influential figures in the development of modern battery technology. His intellectual contributions laid the foundation for the creation of the Lithium-ion battery — a vital component that powers nearly all portable electronic devices in the world today, from smartphones to electric vehicles.\n\nYazami\'s remarkable journey began when he moved to France to pursue higher education. He earned his doctoral degree (Ph.D.) from the Grenoble Institute of Technology (INP) in 1985. However, the most historic moment of his career occurred long before that, in 1980, while he was still a doctoral student.\n\nAt the time, lithium batteries were considered dangerous because they used highly reactive lithium metal that was prone to exploding. Yazami made a breakthrough by discovering that graphite could be used as a much more stable negative electrode (anode). This "graphite anode" discovery is what made lithium batteries safe enough for widespread public use.\n\nThanks to his discovery, in 1991, Sony successfully launched the world\'s first commercial Lithium-ion battery. Throughout his career, Yazami focused not only on research but also taught at elite institutions such as the California Institute of Technology (Caltech) in the United States and Nanyang Technological University (NTU) in Singapore.\n\nThe pinnacle of global recognition for his work came in 2014, when he was awarded the Draper Prize by the National Academy of Engineering. This award is often regarded as the "Nobel Prize" for engineers. In his homeland, he also received the highest medal of honor from King Mohammed VI as a mark of appreciation for his contributions to global science.\n\nTo this day, Rachid Yazami remains actively working and continues to innovate in developing ultra-fast charging technology. He is living proof that perseverance in scientific research can have an extraordinary impact on human civilization. For Morocco and the world, Yazami is a symbol of inspiration, demonstrating that technological innovation is the key to addressing the energy challenges of the future.',
      },
      {
        'name': 'Mohamed Fedal (Chef Moha)',
        'subtitle': 'PROFESSIONAL CHEF & PIONEER OF MODERN MOROCCAN CUISINE',
        'image': 'assets/images/chef_moha.jpg',
        'short':
            'Mohamed Fedal (Chef Moha), born in Marrakech. A professional chef, restaurateur, and MasterChef Maroc judge who played a key role in introducing Moroccan cuisine to the world.',
        'full':
            'Mohamed Fedal, widely known as Chef Moha, was born in Marrakech, Morocco, on May 30, 1967 (estimated). He is a professional chef, restaurateur, and cooking show judge who has played a pivotal role in introducing Moroccan cuisine to the international stage. His famous restaurant, Dar Moha, has become a symbol of innovation in traditional Moroccan cooking.\n\nChef Moha grew up in the family and community environment of Marrakech, rich in culinary traditions. From a young age, he was familiar with the distinctive spices and traditional cooking techniques of the region. This closeness to local culture shaped his love for the culinary world and drove him to pursue it seriously.\n\nTo develop his skills, Chef Moha attended culinary school at the École Hôtelière de Genève in Switzerland. There, he studied modern cooking techniques and international professional standards. After completing his education, he worked in various restaurants across Europe for approximately 14 years.\n\nThis experience gave him broad insight and exceptional skills in preparing world-class dishes. After a long career abroad, Chef Moha decided to return to Morocco with a strong determination to advance his country\'s cuisine. In 1998, he established Dar Moha in Marrakech. At this restaurant, he blended traditional Moroccan recipes with modern presentation techniques, creating a uniquely Moroccan fine dining concept.\n\nHis journey was not easy, as he had to convince people that traditional cuisine could be served elegantly without sacrificing its authentic flavors. Beyond managing his restaurant, Chef Moha also became known as a judge on the popular television show MasterChef Maroc. Through his role on television, he inspired younger generations to love and develop the culinary arts.\n\nThanks to his dedication and contributions, Chef Moha has received numerous international awards, including the Judges Choice Award at the Embassy Chef Challenge 2017 in Washington DC and the Médaille Vermeil des Arts, Sciences et Lettres from France. These honors stand as proof of the world\'s recognition of his role as a culinary ambassador for Morocco.\n\nChef Moha is known as a creative, innovative, and passionate individual dedicated to preserving culture. He has a deep interest in developing traditional recipes with a modern touch without losing their original identity. His contributions have been instrumental in elevating the image of Moroccan cuisine on the international stage and establishing it as a respected part of world gastronomy.',
      },
      {
        'name': 'Meryanne Loum-Martin',
        'subtitle': 'PIONEER OF MARRAKECH BOUTIQUE HOSPITALITY',
        'image': 'assets/images/loummartin.jpg',
        'short':
            'Meryanne Loum-Martin, born on July 24 in Côte d\'Ivoire. Known as the owner of Jnane Tamsna — the first Black woman to own a hotel in Morocco.',
        'full':
            'Meryanne Loum-Martin was born on July 24 in Côte d\'Ivoire, Africa. Unfortunately, her exact birth year has not been publicly disclosed. She is known as the founder and owner of Jnane Tamsna, a luxury boutique hotel located in Marrakech, Morocco. She is also recognized as a former Paris judge turned hotelier — the first Black woman to own a hotel in Morocco.\n\nAs a child, Meryanne\'s family frequently moved between countries, as her father was a diplomat and her mother was a judge. From a young age, she developed a deep love for the cultures of every country she visited, gaining rich multicultural experiences early in life.\n\nEvery three months, Meryanne would visit Paris to see her grandparents. Eventually, when she was 13 years old, her family relocated to Paris. There, she fell in love with Caribbean culture — its food, music, and history. Beyond her passion for culture, Meryanne also developed a deep love for architecture and design.\n\nWhen Meryanne was 10 years old, her family moved to London, where she designed her own bedroom. From childhood, she always contributed to arranging the spaces in her family\'s home. Unfortunately, her dream of becoming an architect was limited by her difficulty with the mathematical aspects of the field. Ultimately, Meryanne followed her family\'s path and became a judge in Paris.\n\nDespite this, her dream of architecture and design never faded. Meryanne made the decision to travel to Morocco in 1985. She launched her first hospitality venture in 1989 in Marrakech — Palmeraie: Dar Tamsna — which went on to win the "2002 Harpers and Queen Award for the Best Private Villa in the World."\n\nIn 1999, Meryanne opened an innovative cultural concept store, Ryad Tamsna, in the Medina of Marrakech. In 2001, the store was featured on the cover of Amex\'s Departures magazine with the headline: "The Essence of Chic." She was hailed as a "pioneer of Marrakech boutique hospitality" by CNN.\n\nFinally, in 2001, she and her husband Gary created Jnane Tamsna — a hotel she designed herself. She crafted the architecture and interior decoration of Jnane Tamsna, drawing inspiration from Moroccan art, her West African roots, and her travels across the East.\n\nThe property spans 9 lush hectares, filled with palm and olive trees. Gary planted nearly 500 different plant species on the grounds, and all the vegetables served in Jnane Tamsna\'s fresh cuisine are grown on their organic farm.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Famous People',
          style: TextStyle(
            color: Color(0xFFB08968),
            fontWeight: FontWeight.w600,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return _buildPersonCard(context, person);
        },
      ),
    );
  }

  Widget _buildPersonCard(BuildContext context, Map<String, String> person) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF0EAE2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// PHOTO
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                person['image']!,
                width: 100,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 14),

            /// TEXT CONTENT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person['name']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    person['subtitle']!,
                    style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFB08968),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    person['short']!,
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Colors.grey.shade700,
                      height: 1.4,
                    ),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        _showBiographyPopup(context, person);
                      },
                      child: const Text(
                        'Learn More',
                        style: TextStyle(
                          color: Color(0xFFB08968),
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBiographyPopup(BuildContext context, Map<String, String> person) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Biography',
      barrierColor: Colors.black.withValues(alpha: 0.7),
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
        );
        return ScaleTransition(
          scale: curvedAnimation,
          child: FadeTransition(opacity: animation, child: child),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    /// HEADER with Name & Close
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFEEEEEE),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  person['name']!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  person['subtitle']!,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFB08968),
                                    letterSpacing: 0.8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              child: const Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// SCROLLABLE BODY
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            /// IMAGE
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                person['image']!,
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 20),

                            /// FULL BIOGRAPHY
                            Text(
                              person['full']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade800,
                                height: 1.8,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
