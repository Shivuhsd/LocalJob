import 'package:flutter/material.dart';
import 'package:local/apply.dart';
import 'package:local/controller/jobcon.dart';
import 'package:local/detail.dart';
import 'package:local/jobrepo/jobs.dart';
import 'package:local/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final d = Jobs();
    d.getJobs();
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Job Finder"),
      ),
      body: FutureBuilder(
          future: JobController().getJobs(),
          builder: (context, snapshot) {
            snapshot.data;

            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final joob = snapshot.data!;

            return ListView.builder(
              itemCount: joob.length,
              itemBuilder: (context, index) {
                //return Text(joob[index].name.toString());
                return Center(
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Icon(Icons.album),
                          title: Text(joob[index].name.toString()),
                          trailing: Text("H"),
                          subtitle: Text(joob[index].discription.toString()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('APPLY'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Apply()),
                                );
                              },
                            ),
                            const SizedBox(width: 8),
                            TextButton(
                              child: const Text('VIEW'),
                              onPressed: () {
                                /* ... */
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Details(joob, index),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
