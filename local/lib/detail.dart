import 'package:flutter/material.dart';
import 'package:local/apply.dart';
import 'package:local/models/jobmodel.dart';

class Details extends StatefulWidget {
  const Details(this.joob, this.index, {super.key});

  final List<Job> joob;
  final int index;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.joob[widget.index].name.toString(),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            "Title: ${widget.joob[widget.index].name.toString()}",
          ),
          Text(
            "Description: ${widget.joob[widget.index].discription.toString()}",
          ),
          Text(
            "Education: ${widget.joob[widget.index].eduction.toString()}",
          ),
          Text(
            "Experience: ${widget.joob[widget.index].experience.toString()}",
          ),
          Text(
            "Salary: ${widget.joob[widget.index].salary.toString()}",
          ),
          Text(
            "Required Skills: ${widget.joob[widget.index].skill.toString()}",
          ),

          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.blue.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.blue.withOpacity(0.12);
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Apply()),
                );
              },
              child: Text('Apply'))

          // ...more items
        ],
      ),
    );
  }
}
