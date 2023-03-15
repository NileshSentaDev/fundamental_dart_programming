// Create a program using Set

void main() {
  // create a set of strings
  Set<String> names = {'Alice', 'Bob', 'Charlie', 'David'};

  // add a new element to the set
  names.add('Eve');

  // remove an element from the set
  names.remove('Charlie');

  // check if the set contains a particular element
  if (names.contains('Alice')) {
    print('Alice is in the set');
  }

  // print all the elements in the set
  for (var name in names) {
    print(name);
  }
}
