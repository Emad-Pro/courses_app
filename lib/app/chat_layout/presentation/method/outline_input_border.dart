import '../../../../core/import/app.dart';

outlineInputBorder(context) => OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
          width: 0.5),
    );
