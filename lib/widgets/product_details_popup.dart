import 'package:e_commerce_shopping_app_ui/screens/cart_screen.dart';
import 'package:e_commerce_shopping_app_ui/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
  final iStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  final List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber,
  ];

  ProductDetailsPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Size: ',
                              style: iStyle,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Color: ',
                              style: iStyle,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Total: ',
                              style: iStyle,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('S', style: iStyle),
                                const SizedBox(width: 30),
                                Text('M', style: iStyle),
                                const SizedBox(width: 30),
                                Text('L', style: iStyle),
                                const SizedBox(width: 30),
                                Text('XL', style: iStyle),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: clrs[i],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Text('-', style: iStyle),
                                const SizedBox(width: 30),
                                Text('1', style: iStyle),
                                const SizedBox(width: 30),
                                Text('+', style: iStyle),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment', style: iStyle),
                        const Text(
                          '\$40.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffdb3022),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ),
                        );
                      },
                      child: ContainerButtonModel(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext: 'Checkout',
                        bgColor: const Color(0xffdb3022),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ContainerButtonModel(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: 'Buy now',
        bgColor: const Color(0xffdb3022),
      ),
    );
  }
}
