import 'package:e_commerce_shopping_app_ui/screens/otp_screen.dart';
import 'package:e_commerce_shopping_app_ui/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrbuttton = false;
  TextEditingController emailcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Please enter your email address.'
                ' You will receive a link to create or set a new password via email'
                '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(

                onChanged: (val) {
                  if (val == '') {
                    setState(() {
                      clrbuttton = true;
                    });
                  }
                },
                controller: emailcontroller,

                decoration: InputDecoration(

                  border: const OutlineInputBorder(),
                  labelText: "Email",
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        emailcontroller.clear();
                      });
                    },
                      icon: const Icon(CupertinoIcons.multiply),
                  ),
                ),
              ),

             const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RecoveryScreen()));

                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xffef6969),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Send code',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const OTPScreen()));
                    },
                    child: const Text(
                      'Verify using number',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffef6969),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
