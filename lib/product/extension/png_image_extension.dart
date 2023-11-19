enum PngImages { redTriangleLogo, twitter, facebook, medicals }

extension PngImagesExtension on PngImages {
  String get getPngPath => 'assets/png/$name.png';
}
