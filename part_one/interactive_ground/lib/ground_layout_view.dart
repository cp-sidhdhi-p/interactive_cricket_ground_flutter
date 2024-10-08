import 'dart:math';
import 'package:flutter/material.dart';
import 'enums.dart';
import 'ground_custom_painters.dart';

class GroundLayoutView extends StatefulWidget {
  final Function(FieldingPosition) onPositionSelect;

  const GroundLayoutView({super.key, required this.onPositionSelect});

  @override
  State<GroundLayoutView> createState() => _GroundLayoutViewState();
}

class _GroundLayoutViewState extends State<GroundLayoutView> {
  final double groundRadius = 184;
  final double pitchWidth = 25;
  final double positionIndicatorSize = 10;

  List<FieldingPosition> positions = [
    FieldingPosition(
      FieldingPositionType.deepMidWicket,
      startAngle: 0,
      endAngle: 45,
    ),
    FieldingPosition(
      FieldingPositionType.longOn,
      startAngle: 45,
      endAngle: 90,
    ),
    FieldingPosition(
      FieldingPositionType.longOff,
      startAngle: 90,
      endAngle: 135,
    ),
    FieldingPosition(
      FieldingPositionType.deepCover,
      startAngle: 135,
      endAngle: 180,
    ),
    FieldingPosition(
      FieldingPositionType.deepPoint,
      startAngle: 180,
      endAngle: 225,
    ),
    FieldingPosition(
      FieldingPositionType.thirdMan,
      startAngle: 225,
      endAngle: 270,
    ),
    FieldingPosition(
      FieldingPositionType.deepFineLeg,
      startAngle: 270,
      endAngle: 315,
    ),
    FieldingPosition(
      FieldingPositionType.deepSquareLeg,
      startAngle: 315,
      endAngle: 360,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: groundRadius,
      child: _groundCircle(),
    );
  }

  Widget _groundCircle() {
    return GestureDetector(
      onTapUp: (details) {
        // logic to get the position
      },
      child: CircleAvatar(
        radius: groundRadius,
        backgroundColor: Colors.green,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _boundaryCircle(),
            CustomPaint(
              painter: FieldingPositionsPainter(context,
                  positions: positions,
                  divisions: 8,
                  radius: groundRadius - 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boundaryCircle() {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, // Stroke color
          width: 1.5,
        ),
      ),
      child: _pitch(),
    );
  }

  Widget _pitch() {
    return CircleAvatar(
      radius: groundRadius / 2,
      backgroundColor: Colors.lightGreen,
      child: Container(
        margin: EdgeInsets.only(top: (groundRadius / 3) * 0.7),
        width: pitchWidth,
        height: groundRadius / 3,
        child: ColoredBox(color: Colors.orange.shade100),
      ),
    );
  }
}
