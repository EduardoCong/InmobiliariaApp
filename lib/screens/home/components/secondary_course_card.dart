import 'package:flutter/material.dart';

import '../../Requestes/timeline_screen.dart';

class SecondaryCourseCard extends StatelessWidget {
  const SecondaryCourseCard({
    Key? key,
    required this.proClient,
    required this.type,
    this.colorl = const Color(0xFF7553F6),
  }) : super(key: key);

  final String proClient, type;
  final Color colorl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: colorl,
        borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const TimelineItem(),
                  )
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    proClient,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    type,
                    style: const TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
