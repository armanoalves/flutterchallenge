import 'dart:math';

double pi = 3.141592653589793;

void main() {
  GeometryCaculator cal = GeometryCaculator();
  cal
    ..separation("circle, 6")
    ..separation("Rectangle, 5, 7")
    ..separation("tRiangle, 3, 4, 5")
    ..separation("SquaRe, 2");
}

class GeometryCaculator extends calculation {
  void separation(String atributes) {
    List<String> list = [];
    var string = atributes.split(", ");
    string.forEach((element) => list.add(element));
    transformation(list);
  }

  void transformation(List<String> atributes) {
    List<double> list = [];
    for (int i = 1; i < atributes.length; i++) {
      list.add(double.parse(atributes[i]));
    }
    select(atributes[0], list);
  }

  void select(String type, List<double> values) {
    switch (type) {
      case 'circle':
        circle(values);
        break;
      case 'Rectangle':
        rectangle(values);
        break;
      case 'tRiangle':
        triangle(values);
        break;
      case 'SquaRe':
        square(values);
        break;
      default:
        print("Ocorreu uma seleção indevida!");
    }
  }
}

abstract class calculation {
  void circle(List<double> radius) =>
      print("Circle area: ${pi * radius[0] * radius[0]}");

  void rectangle(List<double> num) =>
      print("Rectangle area: ${num[0] * num[1]}");

  void triangle(List<double> num) {
    double p = (num[0] + num[1] + num[2]) / 2;
    double a = sqrt((p * (p - num[0]) * (p - num[1]) * (p - num[2])));
    print("Triangle area: ${a}");
  }

  void square(List<double> num) => print("Square area: ${num[0] * num[0]}");
}
