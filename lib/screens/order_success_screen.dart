import 'package:e_commerce_shopping_app_ui/screens/navigation_screen.dart';
import 'package:e_commerce_shopping_app_ui/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('assets/images/done.png', height: 250),
              const Text(
                'Success!',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your order will be delivered soon.',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),
              const Text(
                'Thank you for choosing our app',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationScreen(),
                  ),
                );
              },
              child: ContainerButtonModel(
                itext: 'Continue Shopping',
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: const Color(0xffdb3022),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
