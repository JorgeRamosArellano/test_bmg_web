import 'package:flutter/material.dart';
import 'package:test_bmg_web/widgets/widgets.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraint) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Explore your Personal Interests',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 218, 167),
                fontSize: size.width * 0.02
              ),  
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const CategoryCard(
                    name: 'Growth',
                    icon: Icons.trending_up,
                  ),
                  SizedBox(width: size.width * 0.01),
                  const CategoryCard(
                    name: 'Instant',
                    icon: Icons.install_desktop_outlined,
                  ),
                  SizedBox(width: size.width * 0.01),
                  const CategoryCard(
                    name: 'LifeStyle',
                    icon: Icons.style,
                  ),
                  SizedBox(width: size.width * 0.01),
                  const CategoryCard(
                    name: 'inspirational',
                    icon: Icons.light_mode_outlined,
                  ),
                  SizedBox(width: size.width * 0.01),
                  const CategoryCard(
                    name: 'Experience',
                    icon: Icons.volunteer_activism_outlined,
                  ),
                  SizedBox(width: size.width * 0.01),
                  const CategoryCard(
                    name: 'Together',
                    icon: Icons.child_friendly_sharp,
                  ),
                  
                ],
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  width: constraint.maxWidth,
                  height: 70,//same
                  color: const Color.fromARGB(255, 0, 218, 167),
                ),
                Positioned(
                  left: constraint.maxWidth * 0.35,
                  top: 10,
                  child: CustomSearchButton(
                    hintText: 'Find my ActionPowers',
                    onSubmitted: (value){},
                  ),
                ),
              ],
            ),
            SizedBox(height: size.width * 0.015),
            Wrap(
              spacing: size.width * 0.015,
              runSpacing: size.width * 0.015,
              children: const [
                JobCard(
                  title: 'Login\nDesing',
                  backgroundColor: Color.fromARGB(255, 0, 59, 110),
                  backgroundIconsColor: Colors.white,
                  imageUrl: 'https://townsquare.media/site/757/files/2016/02/Cold.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89',
                ),
                JobCard(
                  title: 'Corporate\nIdentity',
                  backgroundColor: const Color.fromARGB(255, 0, 218, 167),
                  backgroundIconsColor: Color.fromARGB(255, 0, 59, 110),
                  imageUrl: 'https://th.bing.com/th/id/OIP.eXDpn9VzQL8cmYWM_8wAQAHaEK?pid=ImgDet&rs=1',
                ),
                JobCard(
                  title: 'Project\nManager',
                  backgroundColor: const Color.fromARGB(255, 0, 218, 167),
                  backgroundIconsColor: Color.fromARGB(255, 0, 59, 110),
                  imageUrl: 'https://th.bing.com/th/id/OIP.HIWjoqE3x_44Vz3kP9Td8AHaDt?pid=ImgDet&rs=1',
                ),
                JobCard(
                  title: 'Influencer\nGuide',
                  backgroundColor: Color.fromARGB(255, 0, 59, 110),
                  backgroundIconsColor: Colors.white,
                  imageUrl: 'https://thumbs.dreamstime.com/b/working-nature-5628782.jpg',
                ),
                JobCard(
                  title: 'Content\nWriter',
                  backgroundColor: Color.fromARGB(255, 0, 59, 110),
                  backgroundIconsColor: Colors.white,
                  imageUrl: 'https://4.bp.blogspot.com/-dPBsZCgc9-o/XVS3Swg2E6I/AAAAAAAABD0/auWvVjsu-ks1FXLrIohWEGnKswQGnIjeQCLcBGAs/s1600/developer-on-computer.jpg',
                ),
                JobCard(
                  title: 'Experimental\nIllustration',
                  backgroundColor: const Color.fromARGB(255, 0, 218, 167),
                  backgroundIconsColor: Color.fromARGB(255, 0, 59, 110),
                  imageUrl: 'https://th.bing.com/th/id/OIP.mYx1fZx3wExTXdYelSPQbwHaE8?pid=ImgDet&rs=1',
                ),
              ],
            ),
          ],
        );
      }
    );
  }
}