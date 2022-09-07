import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final IconData icon;
  const CategoryCard({Key? key, required this.name, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.005, vertical: 5),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 228, 228)
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: size.width * 0.015,
                backgroundColor: const Color.fromARGB(255, 0, 209, 160),
                child: IconButton(
                  icon: Icon(
                    icon, 
                    color: Colors.black,
                    size: size.width * 0.02,
                  ),
                  onPressed: (){}, 
                ),
              ),
              const SizedBox(width: 10),
              Text(
                name,
                style: TextStyle(
                  fontSize: size.width * 0.010,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 5,
          right: 1,
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color.fromARGB(255, 0, 209, 160),
            size: 10,
          ),
        ),
      ],
    );
  }
}