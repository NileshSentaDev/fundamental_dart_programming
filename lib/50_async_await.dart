// Create a program for asynchronous programming using async & await .

Future<void> main() async {
  print("Start of program");

  await doAsyncTask();

  print("End of program");
}

Future<void> doAsyncTask() async {
  print("Start of async task");

  // Simulate an async task that takes 3 seconds to complete
  await Future.delayed(Duration(seconds: 3));

  print("End of async task");
}
