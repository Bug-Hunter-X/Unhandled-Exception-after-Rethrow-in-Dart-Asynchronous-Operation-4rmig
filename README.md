# Unhandled Exception after Rethrow in Dart Asynchronous Operation

This repository demonstrates a subtle error in Dart asynchronous programming involving the `rethrow` keyword. The `fetchData` function handles exceptions gracefully using `try-catch` and `rethrow`, allowing higher-level functions to manage errors. However, the `main` function lacks exception handling, leading to silent failures if `fetchData` encounters an error.  This is a common pitfall when working with asynchronous operations and exception handling in Dart. The solution demonstrates how to properly handle exceptions at the top-level `main` function to prevent silent failures.

## How to Reproduce

1. Clone this repository.
2. Run the `bug.dart` file.
3. Observe that if the API request fails, there's no informative error message.  The program will seemingly complete without indicating an error.
4. Run `bugSolution.dart` to see the corrected implementation.