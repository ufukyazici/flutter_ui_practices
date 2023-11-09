enum PngImages { redTriangleLogo, twitter, facebook }

extension PngImagesExtension on PngImages {
  String get getPngPath => 'assets/png/$name.png';
}
