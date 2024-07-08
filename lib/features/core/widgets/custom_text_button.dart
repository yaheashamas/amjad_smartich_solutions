import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final bool isUnderLine;

  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isUnderLine = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isUnderLine
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.black,
              decoration: isUnderLine ? TextDecoration.underline : null,
              decorationColor: Theme.of(context).colorScheme.secondary,
              decorationThickness: 2,
            ),
      ),
    );
  }
}
