import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SliverListTileShimmer extends StatelessWidget {
  const SliverListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListTile(
          title: Container(
            width: double.infinity,
            height: 16,
            color: Colors.white,
          ),
          subtitle: Container(
            width: double.infinity,
            height: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
