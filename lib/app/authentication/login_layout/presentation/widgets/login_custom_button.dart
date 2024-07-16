import 'package:flutter/material.dart';

class LoginCustomButton extends StatelessWidget {
  const LoginCustomButton({
    super.key,
    required this.onTap,
    required this.childTitle,
    this.icon,
  });
  final void Function()? onTap;
  final String childTitle;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.2))),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? Container(),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    childTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, letterSpacing: 1.2),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
