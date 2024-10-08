enum FieldingPositionType {
  deepMidWicket(1),
  longOn(2),
  longOff(3),
  deepCover(4),
  deepPoint(5),
  thirdMan(6),
  deepFineLeg(7),
  deepSquareLeg(8);

  final int value;

  const FieldingPositionType(this.value);

  String getString() {
    switch (this) {
      case FieldingPositionType.deepMidWicket:
        return "deep mid wicket";
      case FieldingPositionType.longOn:
        return "long on";
      case FieldingPositionType.longOff:
        return "long off";
      case FieldingPositionType.deepCover:
        return "deep cover";
      case FieldingPositionType.deepPoint:
        return "deep point";
      case FieldingPositionType.thirdMan:
        return "third man";
      case FieldingPositionType.deepFineLeg:
        return "deep fine leg";
      case FieldingPositionType.deepSquareLeg:
        return "deep square leg";
    }
  }

}

enum Distance {
  // do not change the order as position calculation depends on distance index
  short(3),
  mid(2),
  afterMid(1.4),
  boundary(1.15);

  final double divisor;

  const Distance(this.divisor);
}

enum Side {
  off(180),
  leg(0);

  final double angle;

  const Side(this.angle);

  String getString() {
    switch (this) {
      case Side.off:
        return "OFF";
      case Side.leg:
        return "LEG";
    }
  }
}

class FieldingPosition {
  FieldingPositionType type;
  double startAngle;
  double endAngle;
  Distance distance;
  bool showOnScreen;

  FieldingPosition(
      this.type, {
        required this.startAngle,
        required this.endAngle,
        this.distance = Distance.boundary,
        this.showOnScreen = true,
      });
}
