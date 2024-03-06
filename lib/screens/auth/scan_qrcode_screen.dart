import 'package:flutter/material.dart';

class ScanQrCodeScreen extends StatefulWidget {
  const ScanQrCodeScreen({super.key});

  @override
  State<ScanQrCodeScreen> createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State<ScanQrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xFF3B853A),
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              // color: Colors.grey,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  const Expanded(
                    flex: 1, // 25% of the available space
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Scan QR Code to Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Please check Your incoming Lonsum email messages to see the QR Code.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4, // 50% of the available space
                    child: Container(
                      color: Colors.grey,
                      child: const Center(child: Text('Camera Widget')),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Expanded(
                      flex: 1, // 10% of the available space
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Align the barcode within the frame",
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  "Haven’t received an incoming email for the QR Code?",
                                  style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Resend QR Code",
                                  style: TextStyle(
                                      color: Color(0xFF3B853A),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
