import 'package:courses_app/core/import/app.dart';

List<CategoryItem> categoryList() {
  String path = "assets/svg_icons/cateogry";
  return [
    CategoryItem(id: 1001, name: "Design", imagePath: "$path/design.svg"),
    CategoryItem(id: 1002, name: "Business", imagePath: "$path/business.svg"),
    CategoryItem(
        id: 1003, name: "Development", imagePath: "$path/development.svg"),
    CategoryItem(id: 1004, name: "Marketing", imagePath: "$path/marketing.svg"),
    CategoryItem(
        id: 1005, name: "Photography", imagePath: "$path/photography.svg"),
    CategoryItem(
        id: 1006, name: "Video Editor", imagePath: "$path/video_editor.svg"),
    CategoryItem(id: 1007, name: "Science", imagePath: "$path/science.svg"),
    CategoryItem(id: 1008, name: "Interior", imagePath: "$path/interior.svg"),
    CategoryItem(
        id: 1009, name: "Engineering", imagePath: "$path/engienering.svg"),
    CategoryItem(id: 10010, name: "Haking", imagePath: "$path/hacking.svg"),
    CategoryItem(id: 10011, name: "Magician", imagePath: "$path/magicion.svg"),
    CategoryItem(id: 10012, name: "Content", imagePath: "$path/content.svg"),
  ];
}
