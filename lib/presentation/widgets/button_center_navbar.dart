import 'package:flutter/material.dart';
import 'package:flutter_application_todoapp/presentation/pages/home_page.dart';

class ButtonCenterNavBar extends StatelessWidget {
  ButtonCenterNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 0.6,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  HomePage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(5, 0.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);
                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            ),
          );
        },
        backgroundColor: Colors.indigo,
        elevation: 0.5,
        child: const Icon(Icons.home),
      ),
    );
  }
}
