import 'package:flutter/material.dart';
import 'package:test_bmg_web/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.width * 0.01),
            Row(
              children: [
                SizedBox(width: size.width * 0.01),
                const Card(elevation: 5,child: PanelUser()),
                MainPanel(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}