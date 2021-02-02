class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;
  
  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: $_speed mph';
  

  void applyBrake(int decrement) {
  _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}



void main(List<String> args) {
  var bike = Bicycle(1,3);
  print(bike);
}