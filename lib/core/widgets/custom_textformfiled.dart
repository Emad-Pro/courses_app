import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.svgPath,
      this.suffix,
      this.obscure = false,
      this.controller,
      required this.labelText,
      this.validator,
      this.onChanged});
  final String hintText;
  final String? svgPath;
  final bool obscure;
  final String labelText;
  final TextEditingController? controller;
  final Widget? suffix;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
        obscureText: obscure,
        decoration: InputDecoration(
            labelText: labelText,
            suffixIcon: suffix,
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.1)),
            ),
            hintText: hintText,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 0.1,
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.1))),
            prefixIcon: svgPath != null
                ? FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onSurface,
                            BlendMode.srcIn),
                        svgPath!,
                      ),
                    ),
                  )
                : null),
      ),
    );
  }
}
