import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://api.logvalid.com/delivery?email=user@example.com&key=YOUR_API_KEY');
  final response = await http.post(url);
  print(jsonDecode(response.body));
}