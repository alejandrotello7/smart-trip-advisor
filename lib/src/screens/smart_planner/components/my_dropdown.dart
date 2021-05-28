import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  final String title;
  final Function(int) callback;
  final IconData icon;
  final int maxValue;
  final int minValue;

  const MyDropDown(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.maxValue,
      this.callback,
      this.minValue})
      : super(key: key);

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  int _currentValue;
  int _minValue;

  @override
  void initState() {
    super.initState();
    _minValue = widget.minValue ?? 0;
    _currentValue = _minValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.title,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor),
        ),
        DropdownButton(
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
            widget.callback?.call(value);
          },
          value: _currentValue,
          underline: Container(
            height: 2.0,
            color: Theme.of(context).primaryColor,
          ),
          items: List.generate(widget.maxValue - _minValue + 1, (index) {
            int value = index + _minValue;
            return DropdownMenuItem(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  value.toString(),
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ),
            );
          }),
          icon: Icon(widget.icon),
        ),
      ],
    );
  }
}
