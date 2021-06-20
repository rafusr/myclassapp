import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_class_app/model/class_member.dart';
import 'package:my_class_app/model/class_teacher.dart';

class ProfileScreen extends StatelessWidget {
  final String loginName;
  final String loginEmail;

  ProfileScreen({
    @required this.loginName,
    @required this.loginEmail
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
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
                      top: 206.0,
                      left: 20.0
                    ),
                    child: Text(
                      'Class Subjects',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
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
                      height: 113.5,
                      child: ClassSubjects(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 20.0
                    ),
                    child: Text(
                      'Class Members',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      )
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                          left: 20.0,
                          bottom: 5.0
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              child: Image.asset('images/avatar/panda.png')
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '$loginName',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Noto_Sans',
                                      color: Colors.black
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5.0
                                    ),
                                    child: Text(
                                      'Siswa',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Noto_Sans',
                                        color: Colors.grey
                                      )
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 10.0
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: AllClassMember()),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 136.0,
              decoration: BoxDecoration(
                color: Color(0xff00AFF5)
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 20.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '11 MIPA 2',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      '11 anggota kelas',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 96.0, 20.0, 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        child: Image.asset('images/avatar/panda.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$loginName',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontFamily: 'Noto_Sans',
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              '$loginEmail',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Noto_Sans',
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassSubjects extends StatefulWidget {
  @override
  _AllClassSubjects createState() => _AllClassSubjects();
}

class _AllClassSubjects extends State<ClassSubjects> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final ClassTeacher classTeacher = classTeacherList[index];

        return Padding(
          padding: const EdgeInsets.only(
              right: 10.0
          ),
          child: Container(
            width: 150.0,
            height: 113.5,
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
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(classTeacher.classImage),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0
                    ),
                    child: Text(
                      '${classTeacher.className}',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Noto_Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    '${classTeacher.teacherName}',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Noto_Sans',
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: classTeacherList.length,
    );
  }
}

class AllClassMember extends StatefulWidget {
  @override
  _AllClassMember createState() => _AllClassMember();
}

class _AllClassMember extends State<AllClassMember> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final ClassMember classMember = classMemberList[index];

        return Padding(
          padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: Image.asset(classMember.memberAvatar),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        '${classMember.memberName}',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Noto_Sans',
                          color: Colors.black
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0
                      ),
                      child: Text(
                        '${classMember.memberState}',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Noto_Sans',
                            color: Colors.grey
                        )
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: classMemberList.length,
    );
  }
}