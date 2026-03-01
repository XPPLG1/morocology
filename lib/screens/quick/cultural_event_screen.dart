import 'package:flutter/material.dart';

class CulturalEventScreen extends StatefulWidget {
  const CulturalEventScreen({super.key});

  @override
  State<CulturalEventScreen> createState() => _CulturalEventScreenState();
}

class _CulturalEventScreenState extends State<CulturalEventScreen> {
  int _currentMonth = DateTime.now().month - 1; // 0-indexed

  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  final Map<int, List<Map<String, String>>> events = {
    0: [
      {
        'date': '12-13 January',
        'name': 'Yennayes',
        'location': 'Celebrated in various regions of Morocco',
        'desc':
            'Yennayer is the Amazigh New Year celebrated on January 12 or 13 in Morocco and North Africa. It marks the start of the agricultural year and is celebrated with traditional food, music, and cultural events.',
      },
    ],
    1: [], // February
    2: [], // March
    3: [], // April
    4: [
      {
        'date': '4-7 Mai',
        'name': 'Rose Festival',
        'location': 'Celebrated in El Kelaa M\'Gouna',
        'desc':
            'El Kelaa M\'Gouna is a small town in Morocco known as the "Valley of Roses." It is famous for its annual Rose Festival, where locals celebrate the harvest of Damask roses with parades, traditional music, and cultural events.',
      },
      {
        'date': '13-22 Mai',
        'name': 'Fes Festival of World Sacred Music',
        'location': 'Celebrated in Fes',
        'desc':
            'The Fes Festival of World Sacred Music is a prestigious annual event that brings together musicians, artists, and spiritual leaders from around the world. It celebrates the universal language of sacred music in the ancient city of Fes.',
      },
    ],
    5: [
      {
        'date': '19-27 June',
        'name': 'Mawazine Festival',
        'location': 'Celebrated in Rabat',
        'desc':
            'Mawazine is a giant music festival in Morocco featuring international and local stars, known for its mostly free concerts and lively atmosphere.',
      },
      {
        'date': '25-27 June',
        'name': 'Gnaoua & World Music Festival',
        'location': 'Celebrated in Essaouira',
        'desc':
            'The Gnaoua & World Music Festival is an annual cultural celebration held in the coastal city of Essaouira, Morocco, that serves as a bridge between ancestral African traditions and modern global sounds.',
      },
    ],
    6: [
      {
        'date': '2-6 July',
        'name': 'National Popular Arts Festival',
        'location': 'Celebrated in Marrakech',
        'desc':
            'The National Popular Arts Festival (or Festival National des Arts Populaires - FNAP) is the oldest and one of the most prestigious festivals in Morocco. It serves as a grand celebration of the kingdom\'s intangible cultural heritage, showcasing diverse folklore from every corner of the country.',
      },
    ],
    7: [], // August
    8: [], // September
    9: [
      {
        'date': 'Late October',
        'name': 'Erfoud Date Festival',
        'location': 'Celebrated in Erfoud',
        'desc':
            'The Erfoud Date Festival (also known as Guetna) is an annual three-day harvest celebration held every October in Erfoud, Morocco—the heart of the country\'s date-producing region.',
      },
    ],
    10: [
      {
        'date': '14-16 November',
        'name': 'Marrakech Coffee & Tea Festival',
        'location': 'Celebrated in Marrakech',
        'desc':
            'The Marrakech Coffee & Tea Festival is the largest international event in Africa dedicated to the global cultures of coffee and tea. It serves as a comprehensive platform for both business professionals (B2B) and the general public (B2C) to celebrate heritage and innovation.',
      },
    ],
    11: [
      {
        'date': 'Early December',
        'name': 'Marrakech International Film Festival',
        'location': 'Celebrated in Marrakech',
        'desc':
            'The Marrakech International Film Festival (FIFM) is one of the most prestigious cinematic events in the Arab world and Africa. Established under the high patronage of King Mohammed VI, it serves as a major global crossroad for filmmakers from the East and West.',
      },
    ],
  };

  void _previousMonth() {
    setState(() {
      _currentMonth = (_currentMonth - 1 + 12) % 12;
    });
  }

  void _nextMonth() {
    setState(() {
      _currentMonth = (_currentMonth + 1) % 12;
    });
  }

  @override
  Widget build(BuildContext context) {
    final monthEvents = events[_currentMonth] ?? [];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: SafeArea(
        child: Column(
          children: [
            /// TOP DECORATIVE SECTION
            _buildHeader(context),

            /// MONTH NAVIGATOR
            _buildMonthNavigator(),

            const SizedBox(height: 16),

            /// EVENT CARDS
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: monthEvents.isEmpty
                    ? _buildNoEvent()
                    : ListView.builder(
                        key: ValueKey(_currentMonth),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: monthEvents.length,
                        itemBuilder: (context, index) {
                          return _buildEventCard(monthEvents[index]);
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Column(
        children: [
          /// BACK BUTTON + ORNAMENT
          Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Column(
                children: [
                  /// MOROCCAN ORNAMENT
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: CustomPaint(painter: _MoroccanOrnamentPainter()),
                  ),
                  const SizedBox(height: 2),

                  /// DIAMOND
                  const Text(
                    '◆',
                    style: TextStyle(color: Color(0xFFB08968), fontSize: 10),
                  ),
                  const SizedBox(height: 4),

                  /// TITLE
                  const Text(
                    'Culture Event',
                    style: TextStyle(
                      color: Color(0xFFB08968),
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMonthNavigator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Divider(color: Color(0xFFD4C5B2), thickness: 0.5),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _previousMonth,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text(
                    '<',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFB08968),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 120,
                child: Text(
                  months[_currentMonth],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: _nextMonth,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text(
                    '>',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFB08968),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(color: Color(0xFFD4C5B2), thickness: 0.5),
        ],
      ),
    );
  }

  Widget _buildNoEvent() {
    return Center(
      key: ValueKey('no_event_$_currentMonth'),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        decoration: BoxDecoration(
          color: const Color(0xFFF0EAE2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFD4C5B2), width: 0.5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFB08968).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Not Found',
                style: TextStyle(
                  color: Color(0xFFB08968),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'No Event This Month',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard(Map<String, String> event) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF0EAE2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4C5B2), width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// DATE BADGE
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFB08968),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              event['date']!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),

          /// EVENT NAME
          Text(
            event['name']!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB08968),
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 4),

          /// LOCATION
          Text(
            event['location']!,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),

          /// DESCRIPTION
          Text(
            event['desc']!,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

/// Custom painter for the Moroccan ornamental pattern at the top
class _MoroccanOrnamentPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB08968)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;

    final fillPaint = Paint()
      ..color = const Color(0xFFB08968).withValues(alpha: 0.1)
      ..style = PaintingStyle.fill;

    final cx = size.width / 2;
    final cy = size.height / 2;
    final r = size.width * 0.4;

    // Outer diamond
    final outerPath = Path()
      ..moveTo(cx, cy - r)
      ..lineTo(cx + r, cy)
      ..lineTo(cx, cy + r)
      ..lineTo(cx - r, cy)
      ..close();
    canvas.drawPath(outerPath, fillPaint);
    canvas.drawPath(outerPath, paint);

    // Inner diamond
    final ir = r * 0.6;
    final innerPath = Path()
      ..moveTo(cx, cy - ir)
      ..lineTo(cx + ir, cy)
      ..lineTo(cx, cy + ir)
      ..lineTo(cx - ir, cy)
      ..close();
    canvas.drawPath(innerPath, paint);

    // Cross lines
    canvas.drawLine(Offset(cx - r, cy), Offset(cx + r, cy), paint);
    canvas.drawLine(Offset(cx, cy - r), Offset(cx, cy + r), paint);

    // Corner accents
    final sr = r * 0.3;
    for (var angle in [0.0, 1.5708, 3.1416, 4.7124]) {
      final dx =
          cx +
          r *
              0.7 *
              (angle == 0 || angle == 3.1416 ? 1 : 0) *
              (angle < 3 ? 1 : -1);
      final dy =
          cy +
          r *
              0.7 *
              (angle == 1.5708 || angle == 4.7124 ? 1 : 0) *
              (angle < 3 ? 1 : -1);
      canvas.drawCircle(
        Offset(dx, dy),
        sr * 0.15,
        paint..style = PaintingStyle.fill,
      );
      paint.style = PaintingStyle.stroke;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
