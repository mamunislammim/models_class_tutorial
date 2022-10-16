import 'package:flutter/material.dart';

import '../model/student_info.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Model Class"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: studentInfo.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 6, left: 10, right: 10),
                child: Card(
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          "${studentInfo[index].image}",
                          height: 80,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name : ${studentInfo[index].name}"),
                            Text("Institute : ${studentInfo[index].institute}"),
                            Text(
                                "Departemntal : ${studentInfo[index].department}"),
                            Text("Roll : ${studentInfo[index].roll}"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
