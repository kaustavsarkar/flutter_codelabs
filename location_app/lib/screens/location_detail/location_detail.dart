import 'package:flutter/material.dart';
import 'package:location_app/models/location.dart';
import 'package:location_app/screens/location_detail/image_banner.dart';
import 'package:location_app/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  const LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner('assets/images/kiyomizu-dera.jpg'),
          ..._textSections(location),
        ],
      ),
    );
  }

  List<Widget> _textSections(Location location) => location.facts
      .map((fact) => TextSection(body: fact.text, title: fact.title))
      .toList();
}
