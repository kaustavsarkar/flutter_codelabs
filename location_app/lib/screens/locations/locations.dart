import 'package:flutter/material.dart';
import 'package:location_app/models/location.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: Text(location.name),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    return;
  }
}
