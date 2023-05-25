import 'package:flutter/material.dart';

class Spinner extends StatefulWidget {
  final bool? booleanShared;
  final Function? saveBoolean;
  const Spinner({Key? key, this.booleanShared, this.saveBoolean}) : super(key: key);
  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse().then((value) => setState(() {
                _colorIcon = Colors.red.shade700;
              }));
        }
        if (status == AnimationStatus.dismissed) {
          _controller.forward().then((value) => setState(() {
                _colorIcon = Colors.orange;
              }));
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late Color _colorIcon = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: Container(width: 200.0, height: 200.0, color: Colors.green),
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * 3.1415,
          child: IconButton(
            onPressed: () => widget.saveBoolean!(widget.booleanShared),
            icon: Image.asset(
              "assets/assets_appBar/Logo 1 sem fundo.png",
              fit: BoxFit.contain,
              color: _colorIcon,
            ),
          ),
        );
      },
    );
  }
}
