import 'dart:math';

class Tyre {
  String? _tyreManufacturer;
  String? _tyreSize;

  set tyreManufacturer(String tyreManufacturer) =>
      _tyreManufacturer = tyreManufacturer;
  String get tyreManufacturer => _tyreManufacturer.toString();

  set tyreSize(String tyreSize) => _tyreSize = tyreSize;
  String get tyreSize => _tyreSize.toString();

  void printTyreDetails(tyres) {
    print('Details of Tyre is Following:');
    print('Size of Tyre  : ' + tyres.tyreSize);
    print('manufacture of Tyre : ' + tyres.tyreManufacturer);
  }
}
