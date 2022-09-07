import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final Color backgroundColor;
  final Color backgroundIconsColor;
  final String imageUrl;
  final String title;
  const JobCard({Key? key, required this.backgroundColor, required this.imageUrl, required this.title, required this.backgroundIconsColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    return Container(
      width: size.width * 0.35,
      height: size.width * 0.15,
      color: backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size.width * 0.20,
            height: size.width * 0.15,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.02
                    ),
                  ),
                ),
                if(size.width > 965)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundIconsColor,
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          color: Colors.white,
                          icon:  Icon(
                            Icons.play_arrow, color: backgroundColor,
                          
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundIconsColor,
                        shape: BoxShape.circle
                      ),
                      child: IconButton(
                        icon:  Icon(Icons.square_outlined, color: backgroundColor),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundIconsColor,
                        shape: BoxShape.circle
                      ),
                      child: IconButton(
                        icon:  Icon(Icons.celebration, color: backgroundColor),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}