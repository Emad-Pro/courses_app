import 'package:flutter/material.dart';

class CustomAuthButtonWidget extends StatelessWidget {
  const CustomAuthButtonWidget({
    super.key,
    required this.stateValue,
    required this.title,
    required this.onTap,
  });
  final bool stateValue;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: stateValue == true ? onTap : null,
        child: Container(
          decoration: BoxDecoration(
            color: stateValue == true
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
