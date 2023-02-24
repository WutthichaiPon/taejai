import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';

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
      body:

      Container(

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
  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8,),
                          Text(project.period),
                          SizedBox(height: 8,),
                          Text(project.location),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(

              padding: EdgeInsets.all(16.0),
              color: Colors.white54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ยอดบริจาคขณะนี้'),
                  SizedBox(height: 10,),
                  Text((project.receiveAmount.toString()),style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                  Text('เป้าหมาย'),

                ],
                //
              ),
            ),
            Container(
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


            )
          ],
        ),
      ),
    );
  }
}
