import 'package:flutter/material.dart';

class SliverLoadingSpinner extends StatelessWidget {
  const SliverLoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
  }
}
