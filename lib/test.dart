//property: variable inside a class
//Class name starts with Capital letter not camelCase
class Car {
  String carName = 'Ferrari';
  String engineType = 'V8';
  int enginePower = 250;
  double topSpeed = 300;
  String bodyColor = 'Rid';
  String carModel;
  double maxAcceleration;
  //Car(Sting inputCarModel, double maxAcceleration) is positional argument
  //Car ({String inputCarModel, double maxAcceleration}) {..} is named argument

  // Car({String inputCarModel, double maxAcceleration}){

  //   carModel= inputCarModel;
  //   this.maxAcceleration= maxAcceleration;
  // }
  Car(
      {this.carModel,
      this.maxAcceleration}); //Short constructor no function body
}

double addNumbers(double ranger1, double ranger2) {
  double sum = 0;
  sum = ranger1 + ranger2;
  //print (sum);
  return sum;
}

void main() {
  //Type inference feature of DART is var. automatically infers the type of a variable
  var superCar1 = Car(carModel: 'M3', maxAcceleration: 3.2);
  var superCar2 = Car(maxAcceleration: 3.7, carModel: 'Spider');
  //Example of passing positional argument  var superCar3 = Car( 'Saloon' ,4.5);
  //var superCar4 = Car() is just initializing the superCar4 objectvar superCar3 = Car();
  var superCar3 = Car();

  superCar3.bodyColor = 'Space gray';

  print(superCar3.bodyColor);
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
