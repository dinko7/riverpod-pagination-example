import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SliverListTileShimmer extends StatelessWidget {
  const SliverListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).shimmerBaseColor,
        highlightColor: Theme.of(context).shimmerHighlightColor,
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

extension _ShimmerColorsExtension on ThemeData {
  Color get shimmerBaseColor =>
      brightness == Brightness.light ? Colors.grey[300]! : Colors.grey[700]!;

  Color get shimmerHighlightColor =>
      brightness == Brightness.light ? Colors.grey[100]! : Colors.grey[500]!;
}
