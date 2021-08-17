import 'package:location_app/models/location_fact.dart';

class Location {
  final int _id;
  final String _name;
  final String _imagePath;
  final List<LocationFact> _facts;

  int get id => _id;
  String get name => _name;
  String get imagePath => _imagePath;
  List<LocationFact> get facts => _facts;

  Location(this._id, this._name, this._imagePath, this._facts);

  static Location fetchById(int id) =>
      fetchAll().firstWhere((location) => location.id == id);

  static List<Location> fetchAll() {
    return [
      Location(
          1, 'Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact(
            'Summary',
            'While we could go on about the ethereal glow and seemingly endless'
                ' heights of this bamboo grove on the outskirts of Kyoto, the '
                'sight\'s pleasures extend beyond the visual realm.'),
        LocationFact(
            'How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres '
                'south of the city and is also known as Kyoto. Kyoto can also '
                'be reached by transport links from other regional airports.'),
      ]),
      Location(
          2, 'Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact(
            'Summary',
            'While we could go on about the ethereal glow and seemingly endless'
                ' heights of this bamboo grove on the outskirts of Kyoto, the '
                'sight\'s pleasures extend beyond the visual realm.'),
        LocationFact(
            'How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres '
                'south of the city and is also known as Kyoto. Kyoto can also '
                'be reached by transport links from other regional airports.'),
      ]),
      Location(
          3, 'Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact(
            'Summary',
            'While we could go on about the ethereal glow and seemingly endless'
                ' heights of this bamboo grove on the outskirts of Kyoto, the '
                'sight\'s pleasures extend beyond the visual realm.'),
        LocationFact(
            'How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres '
                'south of the city and is also known as Kyoto. Kyoto can also '
                'be reached by transport links from other regional airports.'),
      ]),
    ];
  }
}
