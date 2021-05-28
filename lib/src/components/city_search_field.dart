import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';

class CitySearchField extends StatefulWidget {
  final List<City> suggestions;
  final void Function(City selectedCity) onSelection;

  const CitySearchField({
    Key key,
    @required this.suggestions,
    this.onSelection,
  }) : super(key: key);

  @override
  _CitySearchFieldState createState() => _CitySearchFieldState();
}

class _CitySearchFieldState extends State<CitySearchField> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<City>(
      textFieldConfiguration: TextFieldConfiguration(
        style: DefaultTextStyle.of(context).style.copyWith(fontSize: 20.0),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0, top: 15.0),
          hintText: "City",
          suffixIcon: IconButton(
            icon: Icon(Icons.my_location),
            onPressed: () => _selectCity(widget.suggestions[0]),
          ),
        ),
        controller: _textController,
        onSubmitted: (value) {
          _selectCity(_filterSuggestions(value).first);
        },
        onChanged: (value) {
          widget.onSelection(null);
        },
      ),
      suggestionsCallback: (pattern) {
        return _filterSuggestions(pattern);
      },
      hideOnEmpty: true,
      itemBuilder: (context, suggestion) {
        return ListTile(
          leading: Icon(Icons.location_city),
          title: Text(suggestion.cityName + ", " + suggestion.countryName),
          subtitle: Text('${suggestion.activitiesCount} activities'),
        );
      },
      onSuggestionSelected: (suggestion) {
        _selectCity(suggestion);
      },
    );
  }

  _selectCity(City city) {
    _textController.text = city.cityName + ", " + city.countryName;
    widget.onSelection?.call(city);
  }

  List<City> _filterSuggestions(String pattern) {
    pattern = pattern.toLowerCase();
    return widget.suggestions.where((city) {
      String fullName = (city.cityName + ", " + city.countryName).toLowerCase();
      return fullName.startsWith(pattern);
    }).toList();
  }
}
