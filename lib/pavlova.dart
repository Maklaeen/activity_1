import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lubiano_activity_1')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/pavlova.jpg', height: 240, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Strawberry Pavlova',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                  'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 12),
                Center(child: buildRatingRow()),
                const SizedBox(height: 16),
                buildRowTabs(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRatingRow() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: List.generate(
          5,
          (index) => const Icon(Icons.star_border, color: Colors.yellow),
        ),
      ),
      const SizedBox(width: 8),
      const Text(
        '90 Reviews',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ],
  );

  Widget buildIconTab(IconData icon, String label, String value) => Column(
    children: [
      Icon(icon, color: Colors.yellow, size: 28),
      SizedBox(height: 4),
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      SizedBox(height: 4),
      Text(value, style: const TextStyle(fontSize: 13, color: Colors.black)),
    ],
  );

  Widget buildRowTabs() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildIconTab(Icons.timer_outlined, 'PREP:', '25 min'),
      buildIconTab(Icons.restaurant, 'COOK:', '1 hr'),
      buildIconTab(Icons.people_alt_outlined, 'FEEDS:', '4-6 hrs'),
    ],
  );
}
