class HomePageShortModel{
  final String imgPaths;
  final String fieldName;

  const HomePageShortModel({
    required this.imgPaths,
    required this.fieldName,
  });

  String get homePageShortImgPaths => imgPaths;
  String get homePageShortFieldName => fieldName;
}