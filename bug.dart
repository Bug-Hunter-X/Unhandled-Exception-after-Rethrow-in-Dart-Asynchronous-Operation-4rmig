```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    //Rethrow the exception to be handled by a higher level function. 
    rethrow;
  }
}

void main() async {
  try{
    await fetchData();
    print("Data fetched successfully");
  } catch(e){
    print("Error fetching data: $e");
  }
}
```