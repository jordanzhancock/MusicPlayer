import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import '../themes.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// ignore: must_be_immutable
class NeuBox extends StatefulWidget {
  final Widget child;

  NeuBox({Key? key, required this.child}) : super(key: key);
  bool isPressed = true;
  @override
  State<NeuBox> createState() => _NeuBoxState();
}

class _NeuBoxState extends State<NeuBox> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: (event) => setState(() => isPressed = false),
      onPointerDown: (event) => setState(() => isPressed = true),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: kBoxShadowTopColor,
                  offset: distance,
                  blurRadius: blur,
                  inset: isPressed),
              BoxShadow(
                  color: kBoxShadowBottomColor,
                  offset: -distance,
                  blurRadius: blur,
                  inset: isPressed),
            ]),
        child: widget.child,
      ),
    );
  }
}
