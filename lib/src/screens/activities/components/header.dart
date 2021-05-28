import 'package:flutter/material.dart';

import '../../../services/size_config.dart';

class Header extends StatelessWidget {
  final String cityName;
  final String countryName;
  final String imageUrl;

  const Header({
    Key key,
    @required this.cityName,
    @required this.countryName,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenWidth / 1.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 6.0)]),
          child: Hero(
            tag: imageUrl,
            child: ClipRRect(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(25.0)),
              child: Image(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          left: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cityName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    countryName,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
