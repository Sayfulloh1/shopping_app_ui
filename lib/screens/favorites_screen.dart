import 'package:e_commerce_shopping_app_ui/screens/product_screen.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<String> imageList = [
    'assets/images/image (1).jpg',
    'assets/images/image (2).jpg',
    'assets/images/image (3).jpg',
    'assets/images/image (4).jpg',
    'assets/images/image (5).jpg',
    'assets/images/image (6).jpg',
  ];
  List productTitles = [
    'Warm Zipper',
    'Knitted Woo',
    'Zipper Win',
    'Child Win',
    'Warm Zipper',
    'Warm Zipper',
  ];
  List prices = [
    '\$300',
    '\$30',
    '\$50',
    '\$200',
    '\$150',
    '\$170',
  ];
  List reviews = [
    '54',
    '45',
    '120',
    '542',
    '534',
    '514',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(color: Color(0xffdb3022)),
        ),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: imageList.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.blue,
              width: 320,
              margin: const EdgeInsets.only(right: 15, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductScreen()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              imageList[index],
                              fit: BoxFit.cover,
                              height: 180,
                              width: 180,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xffdb3022),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productTitles[index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            'Lorem Ipsum is sim'
                            'ply dummy text of the printing and ty'
                            'pesetting industry. Lorem Ipsum has been the in'
                            'dustrys standard dummy text ever since the 15',
                            maxLines: 7,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 22,
                            ),
                            Text('${'(' + reviews[index]}) '),
                            Text(
                              prices[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
          },
        ),
      ),
    );
  }
}
