import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliverAsyncError extends StatelessWidget {
  final AsyncValue<dynamic> asyncValue;

  const SliverAsyncError({Key? key, required this.asyncValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Text('Error: ${asyncValue.error}'));
  }
}
