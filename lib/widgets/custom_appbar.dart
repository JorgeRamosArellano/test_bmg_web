import 'package:flutter/material.dart';
import 'package:test_bmg_web/widgets/widgets.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
          height: size.height*0.1,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0,-7)
              ),
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: size.width * 0.01),
              if(size.width > 400)
              Image.asset('images/logo.JPG'),
              if(size.width > 590)
              const VerticalDivider(
                indent: 10, endIndent: 10,
              ),
              if(size.width > 590)
              Row(
                children: [
                  Text(
                    'wake up',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 25, 122),
                      fontWeight: FontWeight.bold,  
                      fontSize: size.width * 0.012,
                    ),
                  ),
                   Text(
                    ' your dreams.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 96, 212, 185),
                      fontWeight: FontWeight.bold,  
                      fontSize: size.width * 0.012
                    ),
                  ),
                ],
              ),
              if(size.width > 590)
              const Spacer(),
              Container(
                width: size.width * 0.02,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: Image.asset('images/banderaES.jpg',).image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.005),
              const Text('ES', style: TextStyle(color: Colors.grey)),
              SizedBox(width: size.width * 0.005),
              CustomSearchButton(
                hintText: 'Search...',
                onSubmitted: (value){}, 
              ),
              SizedBox(width: size.width * 0.02),
              IconButton(
                icon:  const Icon(Icons.message, color: Color.fromARGB(255, 68, 68, 68)),
                onPressed: (){},
              ),
              IconButton(
                icon:  const Icon(Icons.mail, color: Color.fromARGB(255, 68, 68, 68)),
                onPressed: (){},
              ),
              IconButton(
                icon:  const Icon(Icons.notifications, color: Color.fromARGB(255, 68, 68, 68)),
                onPressed: (){},
              ),
              PhotoProfile(
                pathImageNetwork: 'https://th.bing.com/th/id/R.076ede66b173c1d632678c4aca0cff20?rik=a%2b3chFGrtGTZZw&pid=ImgRaw&r=0',//'https://img.icons8.com/office/344/administrator-male--v1.png',
                percentSize: 0.015,
              ),

              SizedBox(width: size.width * 0.01),
              const Text('Jhon Doe'),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                onPressed: (){}, 
              ),
              SizedBox(width: size.width * 0.05),
            ],
          ),
        );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}