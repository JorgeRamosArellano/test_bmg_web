import 'package:flutter/material.dart';

class PercentWidget extends StatelessWidget {
  final String title;
  final String points;
  final String votes;
  final Color color;
  final int percent;

  const PercentWidget({Key? key, required this.title, required this.points, required this.votes, required this.color, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Row(
          children: [
            Align(
              widthFactor: 0.9,
              child: Container(
                width: size.width * 0.2,
                height: size.width * 0.015,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: LayoutBuilder(
                  builder: (context, constraint){
                    return Stack(
                      children: [
                        Container(
                          width: constraint.maxWidth * (percent/100),
                          height: size.width * 0.015,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),  
                        Positioned(
                          left: constraint.maxWidth * 0.4,
                          top: 2,
                          child: Text(
                            points,
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.01
                            ),
                          ),
                        ),            
                      ],
                    );
                  },
                ),
              ),
            ),
            Align(
              widthFactor: 0.3,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: color
                  ),
                ),
                child: Text(
                  votes,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color,
                    fontSize: size.width * 0.012
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}