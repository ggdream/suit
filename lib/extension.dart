import 'implement.dart';

extension AdaptIntType on int {
  double get vw => Adapter.setVW(this.toDouble());
  double get vh => Adapter.setVH(this.toDouble());
}

extension AdaptIntDoubleType on double {
  double get vw => Adapter.setVW(this);
  double get vh => Adapter.setVH(this);
}
