import 'package:flutter/material.dart';

class ClassToday {
  String classImage;
  String className;
  String classHours;
  int classStart;
  int classEnd;

  ClassToday({
    @required this.classImage,
    @required this.className,
    @required this.classHours,
    @required this.classStart,
    @required this.classEnd,
  });
}

var classTodayList = [
  ClassToday(classImage: 'images/class/sigma.png',className: 'Matematika', classHours: '07:00 - 08:00', classStart: 7, classEnd: 8),
  ClassToday(classImage: 'images/class/languages.png',className: 'Bahasa', classHours: '09:00 - 10:00', classStart: 9, classEnd: 10),
  ClassToday(classImage: 'images/class/history.png',className: 'Sejarah', classHours: '11:00 - 12:00', classStart: 11, classEnd: 12),
  ClassToday(classImage: 'images/class/physics.png', className: 'Fisika', classHours: '13:00 - 14:00', classStart: 13, classEnd: 14)
];
