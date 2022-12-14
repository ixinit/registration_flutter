import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.title,
      this.name,
      this.lastname,
      this.aboutText,
      this.gender,
      this.policy,
      this.isSwiched,
      this.lang});

  final String title;

  final String? name;
  final String? lastname;
  final String? aboutText;
  final int? gender;
  final bool? policy;
  final bool? isSwiched;
  final String? lang;

  String getText() {
    String text;
    text = "Имя: $name \n" +
        "Фамилия: $lastname \n" +
        "Пол: ${gender == 0 ? "Женский" : "Мужской"} \n" +
        "Язык: $lang \n" +
        "Переключатель: ${isSwiched == true ? "Что-то включил" : "Что-то выключил"} \n" +
        "О себе: $aboutText \n" +
        "Согласились с чем-то: ${policy == true ? "Да" : "Нет"}";
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            width: 300,
            color: Colors.yellow,
            child: Text(getText()),
          ),
        ));
  }
}
