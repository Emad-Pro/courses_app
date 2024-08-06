import 'package:courses_app/core/import/app.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({
    super.key,
    this.controller,
    this.onChanged,
  });
  final TextEditingController? controller;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: FittedBox(
            fit: BoxFit.scaleDown,
            child: SvgPicture.asset(
              "assets/svg_icons/main/search.svg",
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
              width: 25,
              height: 25,
            ),
          ),
          hintText: "Search",
          contentPadding: const EdgeInsets.all(12)),
    );
  }
}
