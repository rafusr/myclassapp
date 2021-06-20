import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_class_app/model/assignment.dart';

class AssignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assignment',
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffEFF2FB),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 155.0,
              decoration: BoxDecoration(
                color: Color(0xff00AFF5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 20.0,
                ),
                child: Text(
                  'All Assignment',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AllAssignment(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AllAssignment extends StatefulWidget {
  @override
  _AllAssignmentState createState() => _AllAssignmentState();
}

class _AllAssignmentState extends State<AllAssignment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final Assignment assignment = assignmentList[index];

        return SizedBox(
          width: double.infinity,
          height: 150.0,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${assignment.assignmentClass}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontFamily: 'Noto_Sans'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0
                    ),
                    child: Text(
                      '${assignment.assignmentDetail}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontFamily: 'Noto_Sans'
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SubmitButton())
                ],
              ),
            ),
          ),
        );
      },
      itemCount: assignmentList.length,
    );
  }
}

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool isSubmit = false;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: isSubmit
          ? Container(
            width: 90.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0xffEFF2FB),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Submitted',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Noto_Sans',
                  color: Colors.grey
                )
              ),
            ),
          )
          : Container(
            width: 90.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Noto_Sans',
                  color: Colors.white
                ),
              ),
            ),
          ),
      onPressed: () {
        setState(() {
          isSubmit = !isSubmit;
        });
      },
    );
  }
}
