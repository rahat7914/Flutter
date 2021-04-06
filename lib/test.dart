class Car {
  String carName = 'Ferrari';
  String engineType = 'V8';
  int enginePower = 250;
  double topSpeed = 300;
  String bodyColor = 'Red';
}

double addNumbers(double ranger1, double ranger2) {
  double sum = 0;
  sum = ranger1 + ranger2;
  //print (sum);
  return sum;
}

void main() {
  var superCar1 = Car();
  var superCar2 = Car();
  print(superCar1.carName + ' ' + superCar1.engineType);
  superCar1.engineType = 'V12';
  superCar2.carName = 'Bugatti';
  superCar2.enginePower = 1500;
  print(superCar2.carName +
      ' ' +
      superCar2.engineType +
      ' ' +
      superCar2.enginePower.toString());
  double numOne = 32.4, numTwo = 23;
  print(addNumbers(numOne, numTwo));

  var firstResult = addNumbers(1, 2);

  print(addNumbers(12.4, 43.0));
  firstResult = firstResult + 2;
  print(firstResult);
  print(7.23 + 2.41);
}
