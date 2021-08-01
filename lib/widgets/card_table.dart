import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        physics: ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        children: [
          _SingleCard(
            icon: Icons.pie_chart_outline,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.enhanced_encryption_rounded,
            color: Colors.pink,
            text: 'State',
          ),
          _SingleCard(
            icon: Icons.equalizer,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.escalator_warning_sharp,
            color: Colors.blue,
            text: 'General',
          ),
        ],
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            radius: 30,
            child: Icon(
              this.icon,
              size: 35,
            ),
          ),
          SizedBox(height: 10),
          Text(
            this.text,
            style: TextStyle(color: this.color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Column child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: 100,
          height: 180,
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: child,
        ),
      ),
    );
  }
}
