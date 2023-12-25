import 'package:flutter/material.dart';
import 'package:houzz/components/decore.dart';
import 'package:houzz/components/header.dart';
import 'package:houzz/pages/show_decore.dart';
import 'package:houzz/theme/colors.dart';
import 'package:houzz/theme/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Header(
                      header_items: [
                        Icon(
                          Icons.arrow_back,
                          color: black,
                        ),
                        Icon(
                          Icons.search,
                          color: black,
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: black, width: 2),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Decor Collections',
                    style: maintitle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Browse and Search your new style from our trendy collections!',
                    style: greytitle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ShowDecore(
                          title: Text(
                            'Bedroom Flower Bed',
                            style: maintitle,
                          ),
                          image: AssetImage('assets/images/1.jpg'),
                          colors: [
                            const Color.fromARGB(255, 62, 59, 23),
                            Color.fromARGB(255, 19, 65, 22)
                          ],
                          desc: Text(
                            'Create a peaceful oasis in your bedroom with our beautiful flower bed. Made with high-quality materials, it provides the ultimate sleeping experience. Enjoy the calming atmosphere of soft colors and delicate petals for a peaceful night\'s sleep every night.',
                            style: greytitle,
                          ),
                          num: 3,
                        );
                      },
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Decor(
                      title: Text(
                        'Bedroom Decor',
                        style: subtitle,
                      ),
                      subtitle: Text(
                        '200 review',
                        style: greytitle,
                      ),
                      image: AssetImage('assets/images/1.jpg'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ShowDecore(
                          title: Text(
                            'Restroom Sofa',
                            style: maintitle,
                          ),
                          image: AssetImage('assets/images/2.jpg'),
                          colors: [
                            Color.fromARGB(255, 235, 180, 132),
                            const Color.fromARGB(255, 62, 59, 23),
                            Color.fromARGB(255, 9, 146, 18),
                            Color.fromARGB(255, 122, 61, 7),
                          ],
                          desc: Text(
                            "Upgrade your restroom experience with our luxurious and comfortable sofa. Perfect for creating a relaxing atmosphere, this sofa is the ultimate addition to any bathroom. Order now and indulge in the ultimate comfort!",
                            style: greytitle,
                          ),
                          num: 7,
                        );
                      },
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Decor(
                      title: Text(
                        'Restroom Decor',
                        style: subtitle,
                      ),
                      subtitle: Text(
                        '180 review',
                        style: greytitle,
                      ),
                      image: AssetImage('assets/images/2.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
