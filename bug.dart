```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions appropriately (Network errors, JSON decoding errors, etc.)
    print('Error fetching data: $e');
    //Consider rethrowing the exception or handling it differently based on your application's requirements.
    rethrow; // Re-throwing the exception allows calling functions to handle it.
  }
}
```