abstract class Animal {
  bool? _isAnimalAlive;
  String? _animalName;
  int? _animalDistance;
  int? _animalStrength;
  bool? _isAnimalattacktive;
  Animal(String name, bool isAttacktive, bool isAlive, int animalDistance,
      int animalStrength) {
    isAnimalAlive = isAlive;
    animalName = name;
    distance = animalDistance;
    isAnimalAttacktive = isAlive;
    strength = animalStrength;
  }

  String printAnimalDetails() {
    String details = 'Details of Animal will be printed below ';
    return details;
  }

  String printanimalBehaviour() {
    String attackingBehaviour = 'This is animal Attacking behaviour';
    return attackingBehaviour;
  }

  set isAnimalAttacktive(bool isAnimalAttacktive) =>
      _isAnimalattacktive = isAnimalAttacktive;
  bool get isAnimalAttacktive => _isAnimalattacktive!;

  set isAnimalAlive(bool isAnimalaAlive) => _isAnimalAlive = isAnimalaAlive;
  bool get isAnimalAlive => _isAnimalAlive!;

  set animalName(String animalName) => _animalName = animalName;
  String get animalName => _animalName.toString();

  set distance(int animalDistance) => _animalDistance = animalDistance;
  int get distance => _animalDistance!;

  set strength(int animalStrength) => _animalStrength = animalStrength;
  int get strength => _animalStrength!;

  void startFight() {
    if (strength >= 70) {}
  }
}
