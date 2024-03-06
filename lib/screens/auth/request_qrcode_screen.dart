import 'package:flutter/material.dart';
import 'package:lonsum_app/screens/auth/scan_qrcode_screen.dart';

class RequestQrCodeScreen extends StatefulWidget {
  const RequestQrCodeScreen({super.key});

  @override
  State<RequestQrCodeScreen> createState() => _RequestQrCodeScreenState();
}

class _RequestQrCodeScreenState extends State<RequestQrCodeScreen> {
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
                child: Image.asset("assets/images/illustrations/qr_code.png"),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const Text(
                      "Request QR Code Success!",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "Please check your Lonsum Email for the QR Code.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF828282)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const ScanQrCodeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3B853A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 0,
                        ),
                        child: const Text(
                          'SCAN QR CODE TO LOGIN',
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
        ),
      ),
    );
  }
}
