import 'dart:math';

abstract class Shape{
  num get area;
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
}

class Circle implements Shape {
  final radius;
  Circle(this.radius);
  
  num get area => pi * pow(radius, 2); 
}

class Square implements Shape{
  final side;
  Square(this.side);
  
  num get area => pow(side, 2);

}

// Top level factory
Shape shapeFactory(String type){
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create shape $type';

}

main() {
  final circle = Circle(2);
  final square = Square(2);
//   final circle = shapeFactory('circle');
//   final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}