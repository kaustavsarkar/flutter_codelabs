import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _body;
  final String _title;
  static const double _hPad = 16.0;

  const TextSection({String body = '', String title = ''})
      : this._body = body,
        this._title = title;

  @override
  Widget build(BuildContext context) {
    return _myWidget(context);
  }

  Widget _myWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: _edgeInsetPadding,
          child: Text(
            _title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
          child: Text(
            _body,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }

  EdgeInsets get _edgeInsetPadding =>
      EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0);
}
