class Person {
  Person({
    this.id,
  });

  String? id;

  @override
  String toString() {
    return 'Person{id: $id}';
  }
}
