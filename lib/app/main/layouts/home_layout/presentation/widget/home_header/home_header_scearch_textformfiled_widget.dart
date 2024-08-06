import 'package:flutter/material.dart';
import '../../../../../../../core/responsive_layout/responsive_layout.dart';
import '../../../../../../../core/widgets/custom_search_textformfiled.dart';
import '../../../../../../search_layout/presentation/screen/search_screen.dart';

class HomeHeaderSearchTextFormFiledWidget extends StatelessWidget {
  const HomeHeaderSearchTextFormFiledWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
      top: 140,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: isDarkMode
                    ? Theme.of(context).colorScheme.onSurface.withOpacity(0.2)
                    : Theme.of(context).colorScheme.surface),
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.surface),
        width: ResponsiveDevices.isMobile(context)
            ? MediaQuery.of(context).size.width - 20
            : MediaQuery.of(context).size.width - 100,
        child: CustomSearchTextFormField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(value: value)));
            }
          },
        ),
      ),
    );
  }
}
