const String imagePath = "assets/images";
const String animationPath = "assets/animation";

extension ImagePath on String {
  String get toPng => "$imagePath/$this.png";
  String get toJpg => "$imagePath/$this.jpg";
  String get toSvg => "$imagePath/$this.svg";
}

extension AnimationPath on String {
  String get toJson => "$animationPath/$this.json";
}
