class Person {
  Person({
    this.id,
    this.age,
  });

  String? id;
  int? age;

  @override
  String toString() {
    return 'Person{id: $id, age: $age}';
  }
}
