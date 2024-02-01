import 'package:e_commerce_shopping_app_ui/widgets/product_details_popup.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  final List<String> images = [
    'assets/images/image (1).jpg',
    'assets/images/image (2).jpg',
    'assets/images/image (3).jpg',
    'assets/images/image (4).jpg',
    'assets/images/image (5).jpg',
    'assets/images/image (6).jpg',
  ];

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Overview'),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    imagesLink: images,
                    sliderHeight: 430,
                    autoPlay: true,
                    isAssets: true,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Warm Zipper',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                            fontSize: 25
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hooded Jacket',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,

                          ),
                        ),
                      ],
                    ),
                    Text('\$300.00',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xffdb3022)
                    ),)
                  ],
                ),
                const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {

                },
              ),
            ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cool, winter weather is on its way. Send him out\nthe door'
                        ' in a jacket he wants to wear. Warm \nZooper Hooded Jacket',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0x1f989797),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Color(0xffdb3022),
                        ),
                      ),
                    ),
                    ProductDetailsPopup(),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
