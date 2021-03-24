import 'package:flutter/widgets.dart';

abstract class RAdapterLessWidget extends StatelessWidget {
  final double _width;
  final double _height;

  RAdapterLessWidget({Key? key, required double width, required double height})
      : this._width = width / 100,
        this._height = height / 100,
        super(key: key);

  double rw(double size) => this._width * size;
  double rh(double size) => this._height * size;
}

abstract class RAdapterFulWidget extends StatefulWidget {
  final double _width;
  final double _height;

  RAdapterFulWidget({Key? key, required double width, required double height})
      : this._width = width / 100,
        this._height = height / 100,
        super(key: key);

  double rw(double size) => this._width * size;
  double rh(double size) => this._height * size;
}
