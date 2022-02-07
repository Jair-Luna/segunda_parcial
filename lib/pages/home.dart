import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyArc(diameter: 300),
        Scaffold(
          body: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Expanded(
              child: Column(
                children: <Widget>[
                  separador(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Medicina General'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350.0, 50.0),
                      primary: const Color(0xffffffff),
                      onPrimary: const Color(0xff076656),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  separador(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Odontologia'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350.0, 50.0),
                      primary: const Color(0xffffffff),
                      onPrimary: const Color(0xff076656),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  separador(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Emergencias'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350.0, 50.0),
                      primary: const Color(0xffffffff),
                      onPrimary: const Color(0xff076656),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  separador(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Dermatologia'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350.0, 50.0),
                      primary: const Color(0xffffffff),
                      onPrimary: const Color(0xff076656),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  separador(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Salir'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350.0, 50.0),
                      primary: const Color(0xff076656),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  separador(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget separador() {
    return const SizedBox(
      height: 20.0,
      width: 20.0,
    );
  }
}

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({Key? key, this.diameter = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
