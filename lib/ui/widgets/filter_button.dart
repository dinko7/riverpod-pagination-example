import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final Function onTap;

  const FilterButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(),
        child: Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                  color: Theme.of(context).colorScheme.onBackground, width: 1),
            ),
          ),
          child: Icon(
            Icons.tune_outlined,
            color: Theme.of(context).colorScheme.onBackground,
            size: 24,
          ),
        ));
  }
}
