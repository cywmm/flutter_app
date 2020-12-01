import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> loadData() async {
  String dataURL = "https://jsonplaceholder.typicode.com/posts";
  http.Response response = await http.get(dataURL);
}
