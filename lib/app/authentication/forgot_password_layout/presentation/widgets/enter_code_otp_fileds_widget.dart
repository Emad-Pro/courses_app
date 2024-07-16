import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class EnterCodeOtpFiledsWidget extends StatelessWidget {
  const EnterCodeOtpFiledsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: Colors.red),
      ),
    );
    return SliverToBoxAdapter(
      child: Pinput(
        separatorBuilder: (index) => const SizedBox(width: 8),
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        length: 5,
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
        },
        onChanged: (value) {
          debugPrint('onChanged: $value');
        },
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: 22,
              height: 1,
            ),
          ],
        ),
        defaultPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.2)),
          ),
        ),
        focusedPinTheme: defaultPinTheme.copyWith(
          textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface),
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface),
            decoration: defaultPinTheme.decoration!.copyWith(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            )),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: Colors.redAccent),
        ),
      ),
    );
  }
}
