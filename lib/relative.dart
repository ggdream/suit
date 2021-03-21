import 'package:flutter/widgets.dart';

class RAdapter {
  double rw = 0.0;
  double rh = 0.0;

  RAdapter(BuildContext context) {
    var mediaMeta = MediaQuery.of(context);

    this.rw = mediaMeta.size.width / 100;
    this.rh = mediaMeta.size.height / 100;
  }

  double setRW(double size) => this.rw * size;
  double setRH(double size) => this.rh * size;
}

extension RAdaptIntType on int {
  double rw(BuildContext context) => RAdapter(context).setRW(this.toDouble());
  double rh(BuildContext context) => RAdapter(context).setRH(this.toDouble());
}

extension RAdaptDoubleType on double {
  double rw(BuildContext context) => RAdapter(context).setRW(this);
  double rh(BuildContext context) => RAdapter(context).setRH(this);
}
