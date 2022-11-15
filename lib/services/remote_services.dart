import 'package:flutter_catalog/models/item.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Item>?> getItems() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return itemFromJson(json);
    }
  }
}
