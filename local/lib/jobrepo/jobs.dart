import 'package:http/http.dart' as http;
import 'dart:developer';

class Jobs {
  getJobs() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/home/show/');
    final response = await http.get(url);
    log(response.body);
    return response.body;
  }
}
