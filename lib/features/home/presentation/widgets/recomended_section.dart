import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class RecomendedSection extends SliverPersistentHeaderDelegate {
  final ScrollController scrollController;

  RecomendedSection({required this.scrollController});

  @override
  double get minExtent => 100.0;
  @override
  double get maxExtent => 100.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color(0xFFE0EBE8),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Polecane',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.lavender,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Płatne',
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Bezpłatne',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: -33,
            right: 0,
            child: GestureDetector(
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: SizedBox(width: 65, height: 65, child: Placeholder())
                // ClipPath(
                //   clipper: HalfCircleClipper(),
                //   child: Container(
                //     width: 50,
                //     height: 50,
                //     color: Colors.teal,
                //     child: const Icon(
                //       Icons.arrow_upward,
                //       color: Colors.white,
                //       size: 20,
                //     ),
                //   ),
                // ),
                ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.arcTo(Rect.fromLTWH(0, 0, size.width, size.height * 2), 3.14, 3.14, false);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
