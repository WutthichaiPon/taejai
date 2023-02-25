import 'dart:html';

import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
        overflow: TextOverflow.ellipsis,
      )),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.orange[50],
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    project.title,
                    style: TextStyle(fontSize: 30),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    project.imageUrl,
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    project.longDes,
                    style: TextStyle(fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(project.period),
                          SizedBox(
                            height: 8,
                          ),
                          Text(project.location),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ยอดบริจาคขณะนี้'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      (project.receiveAmount.toString()),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 50,
                    ),
                    Text('เป้าหมาย'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          project.targetAmount.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' ${((project.receiveAmount / project.targetAmount) * 100).toStringAsFixed(0)} %',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                  //
                ),
              ),
            ),
            Expanded(
              child: Container(
                // padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      flex: project.receiveAmount,
                      child: Container(
                        height: 10,
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                        color: Colors.orange,
                      ),
                    ),
                    Expanded(
                      flex: project.targetAmount - project.receiveAmount,
                      child: Container(
                        height: 10,
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                        color: Colors.grey[200],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${project.duration} วัน'),
                  Row(
                    children: [
                      Icon(Icons.person_outline),
                      Text('${project.donateCount}'),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: 400,

                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.heart_broken_outlined,
                            size: 20,
                          ),
                          label: Text('ร่วมบริจาค'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30, //height of button
                        width: 400,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_shopping_cart_rounded,
                            size: 20,
                          ),
                          label: Text('หยิบใส่ตระกร้า'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  children: [
                    Text('แชร์ให้เพื่อน'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.line),
                        Icon(FontAwesomeIcons.facebook),
                        Icon(FontAwesomeIcons.twitter),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
