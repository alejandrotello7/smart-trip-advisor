import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() press;

  const DefaultButton({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: press,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      shape: StadiumBorder(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 16.0),
          Icon(
            icon,
            color: Colors.white,
            size: 28.0,
          ),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }
}
