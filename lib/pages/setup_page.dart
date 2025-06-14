import 'package:flutter/material.dart';
import 'package:vibehear/pages/home.dart';
import 'package:vibehear/pages/intro_page.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});

  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 250, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back arrow icon
              GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => IntroPage())
                    ),
                  child: Icon(
                      Icons.arrow_back,
                      size: 28
                  )
              ),

              SizedBox(height: 20),

              // Title
              Text(
                "Setup Your Profile",
                style: TextStyle(fontSize: 34,
                    fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 24),

              // White box
              Center(
                child: Container(
                  width: 400,
                  height: 462,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'First Name',
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8),
                             borderSide: BorderSide(
                               color: Colors.grey.shade800,
                             )
                           ),
                          ),
                        ),
                      ),

                      SizedBox(height: 18),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Middle Name',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Optional",
                            hintStyle: TextStyle(
                              color: Colors.grey[600]
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade800,
                                )
                            ),

                          ),
                        ),
                      ),

                      SizedBox(height: 18),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Last Name',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade800,
                                )
                            ),

                          ),
                        ),
                      ),

                      SizedBox(height: 18),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                'Nick Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                    fontSize: 16
                                ),),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Optional",
                            hintStyle: TextStyle(
                                color: Colors.grey[600]
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade800,
                                )
                            ),

                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 14),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                      'Your data stays private. This app works 100% offline — nothing ever leaves your phone.',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 162,),

              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => Home()
                ),
                ),
                child: Center(
                  child: Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(8, 129, 208, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Proceed',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
