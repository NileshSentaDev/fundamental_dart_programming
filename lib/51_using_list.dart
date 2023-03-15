// Create a program using List

void main() {
  // Create a list of integers
  List<int> numbers = [1, 2, 3, 4, 5];

  // Print the contents of the list
  print("Numbers: $numbers");

  // Add an element to the end of the list
  numbers.add(6);
  print("Numbers after adding 6: $numbers");

  // Remove an element from the list
  numbers.remove(3);
  print("Numbers after removing 3: $numbers");

  // Get the length of the list
  print("Length of numbers list: ${numbers.length}");

  // Access an element of the list by index
  print("Element at index 2: ${numbers[2]}");

  // Sort the list
  numbers.sort();
  print("Numbers after sorting: $numbers");
}
