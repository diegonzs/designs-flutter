import 'package:flutter/material.dart';

class SimpleScreen extends StatelessWidget {
  const SimpleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Image(image: AssetImage('assets/paisaje.jpg')),
            Title(),
            ButtonSection(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nibh leo, semper sed porttitor a, hendrerit non odio. Nunc fringilla, neque eu condimentum blandit, libero dolor fringilla eros, sit amet euismod mi purus vel odio. Fusce ornare, massa elementum semper consectetur, ligula velit hendrerit arcu, vel ornare erat erat ac quam. Pellentesque et justo ut erat egestas tincidunt. Fusce interdum sed leo a porttitor. Pellentesque elementum eros quis turpis mattis, et venenatis massa semper. Nulla facilisi. Sed rhoncus rhoncus luctus.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Icon(Icons.call, color: Colors.blue),
            ),
            Text('Call', style: TextStyle(color: Colors.blue)),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Icon(Icons.navigation, color: Colors.blue),
            ),
            Text('Route', style: TextStyle(color: Colors.blue)),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Icon(Icons.share, color: Colors.blue),
            ),
            Text('Share', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}
