import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:my_class_app/assignment_screen.dart';
import 'package:my_class_app/model/assignment.dart';
import 'package:my_class_app/model/class_today.dart';
import 'package:my_class_app/profile_screen.dart';

var mainTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontFamily: 'Noto_Sans'
);

var subTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 16.0,
  fontFamily: 'Noto_Sans'
);

class HomeScreen extends StatelessWidget {
  final String loginName;
  final String loginEmail;

  HomeScreen({
    @required this.loginName,
    @required this.loginEmail
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Class',
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xffEFF2FB),
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 286.0,
                      left: 20.0,
                    ),
                    child: Text(
                      'Class Today',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20.0,
                      right: 10.0
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 170,
                      child: HomeClass(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 20.0,
                      right: 20.0
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Assignment',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                          )
                        ),
                        Spacer(),
                        TextButton(
                          child: Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Noto_Sans',
                              color: Colors.blueAccent
                            )
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return AssignmentScreen();
                            }));
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 7.0,
                      left: 20.0,
                      right: 20.0,
                      bottom: 20.0
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: HomeAssignment(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 176.0,
              decoration: BoxDecoration(
                color: Color(0xff00AFF5),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                          left: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hi, $loginName!',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            DateTimeFormat(),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 36.0,
                        height: 36.0,
                        margin: const EdgeInsets.only(
                          top: 30.0,
                          right: 20.0
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(3.0),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                ProfileScreen(loginName: loginName, loginEmail: loginEmail,)
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 96.0, 20.0, 30.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 160.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: HomeClassStarted(),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class HomeClass extends StatefulWidget {
  @override
  _HomeClassState createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final ClassToday classToday = classTodayList[index];

        return Padding(
          padding: const EdgeInsets.only(
            right: 10.0
          ),
          child: Container(
            width: 130.0,
            height: 170.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xffEFF2FB),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(classToday.classImage),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0
                    ),
                    child: Text(
                      '${classToday.className}',
                      style: mainTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0
                    ),
                    child: Text(
                      '${classToday.classHours}',
                      style: subTextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xff00AFF5).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: HomeClassToday(classToday: classToday),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: classTodayList.length,
    );
  }
}

class HomeClassToday extends StatefulWidget {
  final ClassToday classToday;

  HomeClassToday({
    @required this.classToday
  });

  @override
  _HomeClassTodayState createState() => _HomeClassTodayState();
}

class _HomeClassTodayState extends State<HomeClassToday> {
  String classState;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now().hour;

    if (now == widget.classToday.classStart || now == widget.classToday.classEnd) {
      setState(() {
        classState = 'Ongoing';
      });
    } else if (now > widget.classToday.classEnd) {
      setState(() {
        classState = 'Done';
      });
    } else if(now >= 1) {
      setState(() {
        classState = 'Next Class';
      });
    } else {
      setState(() {
        classState = 'Invalid';
      });
    }

    return Text(
      '$classState',
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.blueAccent,
        fontFamily: 'Noto_Sans'
      ),
    );
  }
}

class HomeAssignment extends StatefulWidget {
  @override
  _HomeAssignmentState createState() => _HomeAssignmentState();
}

class _HomeAssignmentState extends State<HomeAssignment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final Assignment assignment = assignmentList[index];

        return Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 75.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 30.0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${assignment.assignmentClass}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Noto_Sans'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                    ),
                    child: Text(
                      '${assignment.assignmentDetail}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: subTextStyle
                    ),
                  ),
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

class HomeClassStarted extends StatefulWidget {
  @override
  _HomeClassStartedState createState() => _HomeClassStartedState();
}

class _HomeClassStartedState extends State<HomeClassStarted> {
  final List<ClassToday> classToday = classTodayList;
  String classImage;
  String className;
  String classDescription;
  String classAction;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now().hour;
    var math = classToday[0];
    var languages = classToday[1];
    var history = classToday[2];
    var physics = classToday[3];

    if (now == math.classStart || now == math.classEnd) {
      classImage = math.classImage;
      className = math.className;
      classDescription = 'Class Started';
      classAction = 'Join the class';
    } else if (now == languages.classStart || now == languages.classEnd) {
      classImage = languages.classImage;
      className = languages.className;
      classDescription = 'Class Started';
      classAction = 'Join the class';
    } else if (now == history.classStart || now == history.classEnd) {
      classImage = history.classImage;
      className = history.className;
      classDescription = 'Class Started';
      classAction = 'Join the class';
    } else if (now == physics.classStart || now == physics.classEnd) {
      classImage = physics.classImage;
      className = physics.className;
      classDescription = 'Class Started';
      classAction = 'Join the class';
    } else {
      classImage = 'images/class/empty.png';
      className = 'Class ended';
      classDescription = 'Class ended';
      classAction = 'Class ended';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Color(0xffEFF2FB),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(classImage),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$className',
                    style: mainTextStyle,
                  ),
                  Text(
                    '$classDescription',
                    style: subTextStyle
                  )
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        classAction == 'Join the class'
        ? MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '$classAction',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Noto_Sans'
                )
              )
            ),
          ),
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'Join The Class',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1
            );
          },
        )
        : Container(
          width: MediaQuery.of(context).size.width,
          height: 40.0,
          decoration: BoxDecoration(
            color: Color(0xffEFF2FB),
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '$classAction',
              style: subTextStyle
            )
          ),
        ),
      ],
    );
  }
}

class DateTimeFormat extends StatefulWidget {
  @override
  _DateTimeFormatState createState() => _DateTimeFormatState();
}

class _DateTimeFormatState extends State<DateTimeFormat> {
  DateFormat dateFormat;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    dateFormat = DateFormat('EEEE, d MMMM yyyy', 'id');
  }

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    return Text(
      dateFormat.format(dateTime),
      style: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Noto_Sans',
        color: Colors.white
      ),
    );
  }
}
