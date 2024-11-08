part of 'values.dart';

abstract class AppBoxDecoration {
  static final recomendedImageCard = BoxDecoration(
    color: Colors.black.withOpacity(0.5),
    borderRadius: const BorderRadius.vertical(
      bottom: Radius.circular(10),
    ),
  );

  static final recomendedImageCardIcon = BoxDecoration(
    color: Colors.white.withOpacity(0.2),
    shape: BoxShape.circle,
  );
}
