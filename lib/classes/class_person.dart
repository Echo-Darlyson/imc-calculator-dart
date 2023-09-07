class Person {

  String _name = "";
  double _weight = 0;
  double _height = 0;

  Person(String name, double weight, double height){
    _name = name;
    _weight = weight;
    _height = height;
  }

  // Getters
  String getName(){
    return _name;
  }

  double getWeight(){
    return _weight;
  }

  double getHeight(){
    return _height;
  }

  double calculateIMC(){
    return (_weight / (_height * _height));
  }
}