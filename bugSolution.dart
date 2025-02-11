```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      //Handle different HTTP error codes with specific messages
      throw Exception('Request failed with status: ${response.statusCode}.  ${response.reasonPhrase}');
    }
  } on SocketException {
    print('Network error: Could not connect to the server.');
  } on FormatException catch (e) {
    print('JSON decoding error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Optionally, you can rethrow or handle the error differently
  }
}
```