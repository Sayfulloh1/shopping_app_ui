import 'package:e_commerce_shopping_app_ui/screens/shipping_address_screen.dart';
import 'package:e_commerce_shopping_app_ui/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int type = 1;

  void handleRadio(Object? e) {
    setState(() {
      type = e as int;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
                  width: size.width,
                  margin: const EdgeInsets.only(right: 20),
                  height: 55,
                  decoration: BoxDecoration(
                    border: type == 1
                        ? Border.all(
                            width: 1,
                            color: const Color(0xffdb3022),
                          )
                        : Border.all(
                            width: .3,
                            color: Colors.grey,
                          ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: type,
                                onChanged: handleRadio,
                                activeColor: const Color(0xffdb3022),
                              ),
                              Text(
                                'Amazon Pay',
                                style: type == 1
                                    ? const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      )
                                    : const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          Image.asset(
                            'assets/images/amazon-pay.png',
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: size.width,
                  margin: const EdgeInsets.only(right: 20),
                  height: 55,
                  decoration: BoxDecoration(
                    border: type == 2
                        ? Border.all(
                            width: 1,
                            color: const Color(0xffdb3022),
                          )
                        : Border.all(
                            width: .3,
                            color: Colors.grey,
                          ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: type,
                                onChanged: handleRadio,
                                activeColor: const Color(0xffdb3022),
                              ),
                              Text(
                                'Visa Card',
                                style: type == 2
                                    ? const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      )
                                    : const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          Image.asset(
                            'assets/images/visa.png',
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            'assets/images/mastercard.png',
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: size.width,
                  margin: const EdgeInsets.only(right: 20),
                  height: 55,
                  decoration: BoxDecoration(
                    border: type == 3
                        ? Border.all(
                            width: 1,
                            color: const Color(0xffdb3022),
                          )
                        : Border.all(
                            width: .3,
                            color: Colors.grey,
                          ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: type,
                                onChanged: handleRadio,
                                activeColor: const Color(0xffdb3022),
                              ),
                              Text(
                                'Paypal',
                                style: type == 3
                                    ? const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      )
                                    : const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          Image.asset(
                            'assets/images/paypal.png',
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-Total',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$300.50',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fee',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$15.50',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 30,
                  color: Colors.black,
                  thickness: 2,
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$380.50',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShippingAddressScreen(),
                      ),
                    );
                  },
                  child: ContainerButtonModel(
                    itext: 'Confirm Payment',
                    containerWidth: size.width,
                    bgColor: const Color(0xffdb3022),
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
