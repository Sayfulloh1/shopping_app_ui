import 'package:e_commerce_shopping_app_ui/screens/payment_method_screen.dart';
import 'package:e_commerce_shopping_app_ui/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/image (1).jpg',
    'assets/images/image (2).jpg',
    'assets/images/image (3).jpg',
    'assets/images/image (4).jpg',
    'assets/images/image (5).jpg',
    'assets/images/image (6).jpg',
  ];
  final List productTitles = [
    'Warm Zipper',
    'Knitted Woo',
    'Zipper Win',
    'Child Win',
    'Warm Zipper',
    'Warm Zipper',
  ];
  final List prices = [
    '\$300',
    '\$30',
    '\$50',
    '\$200',
    '\$150',
    '\$170',
  ];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: true,
                          splashRadius: 20,
                          activeColor: const Color(0xffdb3022),
                          onChanged: (val) {},
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageList[index],
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productTitles[index],
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Hooded Jacket',
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              prices[index],
                              style: const TextStyle(
                                color: Color(0xffdb3022),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              CupertinoIcons.minus,
                              color: Colors.green,
                            ),
                            SizedBox(width: 20),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              CupertinoIcons.plus,
                              color: Color(0xffdb3022),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Checkbox(
                    value: true,
                    splashRadius: 20,
                    activeColor: const Color(0xffdb3022),
                    onChanged: (val) {},
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 2, color: Colors.black),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\$300.50',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffdb3022),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentMethodScreen(),
                    ),
                  );
                },
                child: ContainerButtonModel(
                  itext: 'Checkout',
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: const Color(0xffdb3022),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
