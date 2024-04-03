import 'package:flutter/material.dart';

class SliverErrorMessage extends StatelessWidget {
  const SliverErrorMessage({super.key, required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Text('Error: ${error.toString()}'));
  }
}
