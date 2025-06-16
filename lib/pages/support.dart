import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey.shade800,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Transform.translate(
          offset: Offset(-12, 0),
          child: Text(
            'Support',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 18, right: 25),
          child: Column(
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: 'Need Help?',
                        style: TextStyle(
                          color: Color.fromRGBO(8, 129, 208, 1),
                        ),
                      ),
                      TextSpan(
                        text: " You're at the Right Place.\nWe’re here to support you—every step of the way.",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Ways To Reach Us:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'lib/images/whatsapp.png',
                      height: 28,
                      width: 28,
                    ),
                    SizedBox(width: 8),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: "WhatsApp - ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[800],
                            ),
                          ),
                          TextSpan(
                            text: "Click here or message\nus on +91-6201668873.",
                            style: TextStyle(
                              color: Colors.grey[800],
                            )
                          )
                        ]
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}