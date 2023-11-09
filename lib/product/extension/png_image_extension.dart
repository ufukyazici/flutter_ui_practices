enum PngImages { redTriangleLogo }

extension PngImagesExtension on PngImages {
  String get getPngPath => 'assets/png/$name.png';
}
