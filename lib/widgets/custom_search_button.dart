import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  final String hintText;
  final void Function(String value) onSubmitted;
  const CustomSearchButton({
    Key? key,
    required this.onSubmitted,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('search: ${size.height}');
    return Container(
          padding: const EdgeInsets.only(left: 20, right: 0),
          width: size.width * 0.2,
          height: size.height > 1200 ? size.height * 0.015 : size.height * 0.05,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 243, 243, 243),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color.fromARGB(255, 196, 196, 196)),
          ),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              suffixIcon:  const Icon(
                Icons.search,
                color: Color.fromARGB(255, 96, 212, 185),
              ),
              border: InputBorder.none,
              hintText: hintText,
            ),
            onChanged: (value) {
              //onChanged(value);
            },
            onSubmitted: (value) {
              onSubmitted(value.trim());
            },
          ),
        );
      
  }
}
