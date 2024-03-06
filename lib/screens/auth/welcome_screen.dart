import 'package:flutter/material.dart';
import 'package:lonsum_app/screens/auth/request_qrcode_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController loginAd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child:
                  Image.asset("assets/images/illustrations/secure_login.png"),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Lonsum LoginID",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF4F4F4F)),
                  ),
                  TextField(
                    controller: loginAd,
                    decoration: const InputDecoration(
                        hintText: 'Enter your computer login id...',
                        hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFFBDBDBD),
                            fontWeight: FontWeight.w400),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFBDBDBD))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFBDBDBD)))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const RequestQrCodeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3B853A),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 0,
                      ),
                      child: const Text(
                        'SEND TO EMAIL',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
    // Scaffold(
    //     backgroundColor: Colors.white,
    //     body: Container(
    //       child: SafeArea(
    //           child: Center(
    //               child: SingleChildScrollView(
    //         scrollDirection: Axis.vertical,
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: <Widget>[
    //             Container(
    //               width: 300,
    //               height: 200,
    //               child: Image.asset(
    //                   "assets/images/illustrations/secure_login.png"),
    //             ),
    //             Container(
    //               width: MediaQuery.of(context).size.width / 1.1,
    //               margin: EdgeInsets.only(top: 24),
    //               padding: EdgeInsets.symmetric(horizontal: 16),
    //               child: Column(
    //                 children: [LoginAd()],
    //               ),
    //             )
    //           ],
    //         ),
    //       ))),
    //     ));
  }

  // Container LoginAd() {
  //   return Container(
  //     child: Column(
  //       children: [
  //         Text(
  //           "Your Lonsum LoginID",
  //           style: TextStyle(
  //               fontWeight: FontWeight.w600,
  //               fontSize: 14,
  //               color: Color(0xFF4F4F4F)),
  //         ),
  //         TextField(
  //           decoration: InputDecoration(
  //               hintText: 'Enter your computer login id...',
  //               enabledBorder: UnderlineInputBorder(
  //                   borderSide: BorderSide(color: Colors.grey))),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
