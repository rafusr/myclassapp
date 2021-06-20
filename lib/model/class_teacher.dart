import 'package:flutter/material.dart';

class ClassTeacher {
  String classImage;
  String className;
  String teacherName;

  ClassTeacher({
    @required this.classImage,
    @required this.className,
    @required this.teacherName,
  });
}

var classTeacherList = [
  ClassTeacher(classImage: 'images/class/sigma.png',className: 'Matematika', teacherName: 'Pak Agus'),
  ClassTeacher(classImage: 'images/class/physics.png',className: 'Fisika', teacherName: 'Pak Rizal'),
  ClassTeacher(classImage: 'images/class/languages.png',className: 'Bahasa', teacherName: 'Bu Ifa'),
  ClassTeacher(classImage: 'images/class/history.png',className: 'Sejarah', teacherName: 'Bu Siti')
];

