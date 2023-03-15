// Create a program using Map

void main() {
  // create a map of string keys and integer values
  Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 35};

  // add a new key-value pair to the map
  ages['David'] = 40;

  // update the value for an existing key
  ages['Bob'] = 32;

  // remove a key-value pair from the map
  ages.remove('Charlie');

  // check if the map contains a particular key
  if (ages.containsKey('Alice')) {
    print('Alice is in the map');
  }

  // print all the keys and values in the map
  for (var entry in ages.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
 