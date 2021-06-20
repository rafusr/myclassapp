import 'package:flutter/material.dart';

class ClassMember {
  String memberAvatar;
  String memberName;
  String memberState;

  ClassMember({
    @required this.memberAvatar,
    @required this.memberName,
    @required this.memberState
  });
}

var classMemberList = [
  ClassMember(memberAvatar: 'images/avatar/bear.png',memberName: 'Pak Agus', memberState: 'Guru'),
  ClassMember(memberAvatar: 'images/avatar/beaver.png', memberName: 'Pak Rizal', memberState: 'Guru'),
  ClassMember(memberAvatar: 'images/avatar/cat.png', memberName: 'Bu Siti', memberState: 'Guru'),
  ClassMember(memberAvatar: 'images/avatar/deer.png', memberName: 'Bu Ifa', memberState: 'Guru'),
  ClassMember(memberAvatar: 'images/avatar/weasel.png', memberName: 'Ariadi', memberState: 'Siswa'),
  ClassMember(memberAvatar: 'images/avatar/donkey.png', memberName: 'Andi', memberState: 'Siswa'),
  ClassMember(memberAvatar: 'images/avatar/elephant.png', memberName: 'Diana', memberState: 'Siswa'),
  ClassMember(memberAvatar: 'images/avatar/fox.png', memberName: 'Ryan', memberState: 'Siswa'),
  ClassMember(memberAvatar: 'images/avatar/rabbit.png', memberName: 'Septi', memberState: 'Siswa'),
  ClassMember(memberAvatar: 'images/avatar/zebra.png', memberName: 'Hendra', memberState: 'Siswa'),
];