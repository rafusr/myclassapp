import 'package:flutter/material.dart';

class Assignment {
  String assignmentClass;
  String assignmentDetail;

  Assignment({
    @required this.assignmentClass,
    @required this.assignmentDetail,
  });
}

var assignmentList = [
  Assignment(assignmentClass: 'Bahasa', assignmentDetail: 'Ceramah bersifat menyeluruh tidak ada batasan-batasan apapun baik baik dari audien yang tua maupun muda, hal tersebut disebut'),
  Assignment(assignmentClass: 'Matematika', assignmentDetail: 'Polinom berderajat 3 p(x)=x^3+Ax^2+Bx+C bersisa 6 jika dibagi dengan x-1. Diketahui p(x) habis dibagi polinom derajat 2 dengan akar-akar x_1 dan x_2, \\frac{1}{x_1}+\\frac{1}{x_2}=\\frac{5}{6}. Maka, hasil dari A+B+C adalah'),
  Assignment(assignmentClass: 'Sejarah', assignmentDetail: 'Pangeran Sabrang Lor adalah salah satu tokoh dari Kerajaan Demak yang berusaha menyerang Portugis. Nama asli dari Pangerang Sabrang Lor adalah'),
  Assignment(assignmentClass: 'Fisika', assignmentDetail: 'Seorang penari balet memiliki momen inersia 5 kgm2 ketika kedua lengannya direntangkan dan 2 kgm2 ketika kedua lengan merapat ke tubuhnya. Penari tersebut mula-mula berputar dengan kecepatan 2,4 put/s, maka besar kecepatan sudut penari saat kedua tangannya merapat adalah')
];