import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchUsers() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load users');
  }
}
