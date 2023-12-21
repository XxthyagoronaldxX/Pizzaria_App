class CategoryModel {
  late String _id;
  final String name;
  final String imageUri;

  CategoryModel({
    String id = "",
    required this.name,
    required this.imageUri,
  }) {
    _id = id;
  }
}