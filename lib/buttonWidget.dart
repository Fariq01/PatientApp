import 'package:flutter/material.dart';

class ButtonHeader extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback onClicked;

  const ButtonHeader({
    Key key,
    @required this.title,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderWidget(
        title: title,
        child: ButtonWidget(
          text: text,
          onClicked: onClicked,
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(40),
          primary: Colors.white,
        ),
        // child: Column(
        //   children: <Widget>[
        //     TextField(
        //       decoration: InputDecoration(
        //           labelText: 'Category',
        //           labelStyle: TextStyle(
        //               fontFamily: 'Montserrat',
        //               fontWeight: FontWeight.bold,
        //               color: Colors.grey),
        //           focusedBorder: UnderlineInputBorder(
        //               borderSide: BorderSide(color: Colors.blue))),
        //     ),
        //   ],
        // ),
        child: Column(children: <Widget>[
          FittedBox(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ]),
        onPressed: onClicked,
      );
}

class HeaderWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const HeaderWidget({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      );
}
