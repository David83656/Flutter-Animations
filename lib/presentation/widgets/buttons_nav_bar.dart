import 'package:flutter/material.dart';

class ButtonsNavigationBar extends StatelessWidget {
  const ButtonsNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined),
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.book),
              color: Colors.white),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_book_sharp),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
