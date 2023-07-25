import 'package:flutter/material.dart';
import 'package:flutter_application_todoapp/presentation/widgets/widgets_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBar(
            centerTitle: true,
            title: Text('Martes'),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          BottomNavBarPerso(),
        ],
      ),
    );
  }
}

class BottomNavBarPerso extends StatelessWidget {
  const BottomNavBarPerso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 10,
        child: Stack(
          children: [
            CustomPaintWidgetP(),
            ButtonCenterNavBar(),
            ButtonsNavigationBar(),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // ignore: no_leading_underscores_for_local_identifiers
    Paint _paint = Paint()
      ..color = Colors.indigo
      ..style = PaintingStyle.fill;
    // ignore: no_leading_underscores_for_local_identifiers
    Path _path = Path()..moveTo(0, 20);
    _path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    _path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    _path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(10.0), clockwise: false);
    _path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    _path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    _path.lineTo(size.width, size.height);
    _path.lineTo(0, size.height);
    _path.close();
    canvas.drawShadow(_path, Colors.black, 5, true);
    canvas.drawPath(_path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
