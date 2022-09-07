import 'package:flutter/material.dart';
import 'package:test_bmg_web/widgets/widgets.dart';

class PanelUser extends StatelessWidget {
  const PanelUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const HeadersButton(),
          SizedBox(height: size.width * 0.01),

          PhotoProfile(
            pathImageNetwork: 'https://th.bing.com/th/id/R.076ede66b173c1d632678c4aca0cff20?rik=a%2b3chFGrtGTZZw&pid=ImgRaw&r=0',
            percentSize: 0.055,
            icon: Icons.camera_alt_outlined,
            onPressedIcon: (){},
          ),
          SizedBox(height: size.width * 0.01),
          Text(
            'Jhon Doe', 
            style: TextStyle(
              fontWeight: FontWeight.bold,  
              fontSize: size.width * 0.015,
            ),
          ),
          SizedBox(height: size.width * 0.001),
          Text(
            'Entrepreneur - Power Level B',
            style: TextStyle(
              color: Colors.grey,  
              fontSize: size.width * 0.01,
            ),
          ),
          SizedBox(height: size.width * 0.005),
          Container(
            height: 1,
            width: size.width * 0.2,
            color: const Color.fromARGB(255, 230, 230, 230),
          ),
          SizedBox(height: size.width * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/hojas.jpg'),
              SizedBox(width: size.width * 0.01),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Balance',
                    style : TextStyle(
                      color: Colors.grey,  
                      fontSize: size.width * 0.01,
                    ),
                  ),
                  Text(
                    '200 SeedCoins',
                    style : TextStyle(
                      color: const Color.fromARGB(255, 0, 218, 167),  
                      fontSize: size.width * 0.015,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: size.width * 0.01),
          MaterialButton(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide()
            ),
            child: const Text('Add 50 SeedCoinds', style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: (){},
          ),
          SizedBox(height: size.width * 0.01),
          Container(
            height: 1,
            width: size.width * 0.2,
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          SizedBox(height: size.width * 0.01),
          const PercentWidget(
            percent: 75,
            title: 'Your next PowerLevel',
            votes: '9',
            points: '250 Points',
            color: Color.fromARGB(255, 82, 194, 168),
          ),
          const PercentWidget(
            percent: 30,
            title: 'Next Reward',
            votes: '2',
            points: '150 Points',
            color: Color.fromARGB(255, 15, 38, 100),
          ),
          if(size.width > 590)
          Container(
            //padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            width: size.width * 0.2,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 233, 233, 233),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.person_pin_rounded)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.edit_calendar_sharp)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
              ],
            ),
          ),
          SizedBox(height: size.width * 0.01),
          

        ], 
      ),
    );
  }
}

class HeadersButton extends StatelessWidget {
  const HeadersButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final style = TextStyle(
          color: Colors.grey,  
          fontSize: size.width * 0.01,
        );
    return Container(
      padding: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 243, 243, 243),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.trending_up, color: Colors.teal),
                onPressed: (){},
              ),
              SizedBox(height: size.width * 0.001),
              Text('ActionPower', style: TextStyle(color: Colors.teal, fontSize: size.width * 0.01,)),
            ],
          ),
          SizedBox(width: size.width * 0.005),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.monetization_on),
                onPressed: (){},
              ),
              SizedBox(height: size.width * 0.001),
              Text('SoodCoins', style: style),
            ],
          ),
          SizedBox(width: size.width * 0.005),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.looks_two_outlined),
                onPressed: (){},
              ),
              SizedBox(height: size.width * 0.001),
              Text('WeSocial', style: style),
            ],
          ),
          SizedBox(width: size.width * 0.005),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: (){},
              ),
              SizedBox(height: size.width * 0.001),
              Text('WeChat', style: style),
            ],
          ),
        ],
      ),
    );
  }
}