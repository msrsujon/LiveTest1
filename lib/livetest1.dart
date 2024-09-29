class Car {
  // Public properties
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Method to calculate the car's age
  int carAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  // Create an instance of the Car class
  Car myCar = Car('Toyota', 'Corolla', 2015);

  // Display the car's information
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
  print('Car Age: ${myCar.carAge()} years');
}
