import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum SWBadgePosition {
  before,
  after,
}

enum SWBadgeStyle {
  circle,
  square,
}

/// Widget Badge
class SWBadge extends StatefulWidget {
  /// Child Widget
  final Widget child;

  final SWBadgePosition badgePosition;

  final SWBadgeStyle badgeStyle;

  final String value;

  final TextStyle textStyle;

  final Color color;

  final Color borderColor;

  final double borderSize;

  final double positionVertical;

  final double positionHorizontal;

  SWBadge({
    Key key,
    @required this.child,
    @required this.value,
    @required this.badgePosition,
    @required this.badgeStyle,
    this.color = Colors.red,
    this.borderColor = Colors.white,
    this.borderSize = 2.0,
    this.textStyle = const TextStyle(color: Colors.white),
    this.positionVertical = -20,
    this.positionHorizontal = -10.0,
  }) : super(key: key);

  @override
  _SWBadgeState createState() => new _SWBadgeState();
}

class _SWBadgeState extends State<SWBadge> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        widget.child,
        new Positioned(
          top: widget.positionVertical,
          right: widget.badgePosition == SWBadgePosition.before
              ? widget.positionHorizontal
              : null,
          left: widget.badgePosition == SWBadgePosition.after
              ? widget.positionHorizontal
              : null,
          bottom: null,
          child: new Container(
            decoration: BoxDecoration(
              color: widget.color,
              border: new Border.all(
                color: widget.borderColor,
                width: widget.borderSize,
              ),
              borderRadius: widget.badgeStyle == SWBadgeStyle.circle
                  ? new BorderRadius.circular(100.0)
                  : new BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: new Text(
                widget.value,
                style: widget.textStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
