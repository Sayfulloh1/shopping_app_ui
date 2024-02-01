import 'package:e_commerce_shopping_app_ui/screens/recovery_screen.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpRecoveryScreen extends StatefulWidget {
  const OtpRecoveryScreen({Key? key}) : super(key: key);

  @override
  State<OtpRecoveryScreen> createState() => _OtpRecoveryScreenState();
}

class _OtpRecoveryScreenState extends State<OtpRecoveryScreen> {

  int otpCodeLength = 4;
  TextEditingController textEditingController =  TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    _getSignatureCode();
  }

  @override
  void dispose() {
    super.dispose();
    SmsVerification.stopListening();
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  /// get signature code
  _getSignatureCode() async {
    // String? signature = await SmsVerification.getAppSignature();
    // print("signature $signature");
  }










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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter OTP ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter the OTP we have sent you to your number',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFieldPin(
                textController: textEditingController,
                autoFocus: false,
                codeLength: otpCodeLength,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 46.0,
                margin: 10,
                selectedBoxSize: 50.0,
                textStyle: const TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(
                        color:
                            Theme.of(context).primaryColor.withOpacity(0.6))),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {

                  });
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RecoveryScreen()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xffef6969),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
