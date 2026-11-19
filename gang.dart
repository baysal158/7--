class Student {
  String name;
  int age;
  double averagePoint;

  Student(this.name, this.age, this.averagePoint);

  void printInfo() {
    print('студент: $name, возраст: $age, средний балл: $averagePoint');
  }

  bool isExcellent() {
    return averagePoint >= 4.5;
  }
}

class BankAccount {
  String owner;
  double balance = 0.0;

  BankAccount(this.owner);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('недостаточно средств');
    }
  }

  double getBalance() {
    return balance;
  }

  void printStatement() {
    print('владелец: $owner, баланс: $balance');
  }
}

class Product {
  String title;
  double price;
  int quantity;

  Product(this.title, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }

  void printProduct() {
    print('товар: $title, цена: $price, кол-во: $quantity');
  }

  void restock(int amount) {
    quantity += amount;
  }
}

void main() {
  // задание 1

  Student s1 = Student('алекс', 16, 4.8);
  Student s2 = Student('иван', 17, 4.2);
  Student s3 = Student('максим', 16, 5.0);

  s1.printInfo();
  print(s1.isExcellent());

  s2.printInfo();
  print(s2.isExcellent());

  s3.printInfo();
  print(s3.isExcellent());

  // задание 2

  BankAccount b1 = BankAccount('алекс');
  BankAccount b2 = BankAccount('иван');

  b1.deposit(1000);
  b1.deposit(500);
  b1.withdraw(200);

  b2.deposit(2000);
  b2.withdraw(500);
  b2.deposit(300);

  b1.printStatement();
  b2.printStatement();

  // задание 3

  List<Product> products = [
    Product('телефон', 20000, 5),
    Product('ноутбук', 50000, 3),
    Product('наушники', 1500, 10),
    Product('мышка', 800, 7),
    Product('клавиатура', 2500, 4),
  ];

  double total = 0;
  Product expensive = products[0];

  for (var p in products) {
    p.printProduct();
    total += p.getTotalCost();

    if (p.price > expensive.price) {
      expensive = p;
    }
  }

  print('общая стоимость склада: $total');
  print('самый дорогой товар: ${expensive.title}');

  products[0].restock(5);
  products[0].printProduct();
}