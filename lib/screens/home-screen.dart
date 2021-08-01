import 'package:custom_designs/widgets/background.dart';
import 'package:custom_designs/widgets/card_table.dart';
import 'package:custom_designs/widgets/custom_bottom_navigation.dart';
import 'package:custom_designs/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(),
      body: Stack(
        children: [
          Background(),
          _HomeBody(),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PageTitle(),
        CardTable(),
      ],
    );
  }
}
