import 'package:equatable/equatable.dart';

class CategoryItem extends Equatable {
  final String name;
  final int id;
  final String imagePath;
  final bool isSelected;
  const CategoryItem(
      {required this.name,
      required this.id,
      required this.imagePath,
      this.isSelected = false});

  @override
  List<Object?> get props => [name, id, imagePath, isSelected];
}
