import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:local/models/jobmodel.dart';

class JobController {
  Future<List<Job>> getJobs() async {
    // final response = await productRepo.getProduct();

    final url = Uri.parse('http://10.0.2.2:8000/api/home/show/');
    final response = await http.get(url);

    List<dynamic> data = jsonDecode(response.body);
    // print("as" + data.toString());

    Map<String, List<dynamic>> datadic = {"job": data};

    JobsModel jobb = JobsModel.fromJson(datadic);

    List<Job> jobs = jobb.job!.map((e) => e).toList();

    return jobs;
  }
}
