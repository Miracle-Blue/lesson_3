import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "some_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  final ButtonStyle textButtonStyle = TextButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.blue,
      minimumSize: const Size(100, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          "Instagram",
          style: GoogleFonts.mcLaren(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.image),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cancel),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1489549132488-d00b7eee80f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Colors.black54,
                  Colors.black12,
                ]),
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  /// Shadow Container
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                          spreadRadius: 3,
                        )
                      ],
                    ),
                    height: 100,
                    width: double.infinity,
                  ),

                  /// Count Text
                  Center(
                    child: Text(
                      "Count: " + count.toString(),
                      style: GoogleFonts.mcLaren(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  /// Column Container
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.redAccent,
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          color: Colors.greenAccent,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          color: Colors.purple,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Row Container
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 30,
                          color: Colors.redAccent,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.greenAccent,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            color: Colors.purple,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 50,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Task 1
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 400,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.green,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  /// Task 2
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 400,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  color: Colors.teal,
                                  child: const Text("Logo Area"),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  color: Colors.green.shade900,
                                  child: const Text("header Area"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  color: Colors.blueGrey,
                                  child: const Text("Left Content Area"),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  color: Colors.green,
                                  child: const Text("Right Content Area"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Task 3
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border:
                          Border.all(width: 10, color: Colors.blue.shade900),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 10,
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 10,
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 10,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Task 4
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border:
                          Border.all(width: 10, color: Colors.blue.shade900),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 10,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 10,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 10,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  /// Task 5
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 600,
                    color: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue.shade900,
                          width: 5,
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Column",
                              style: GoogleFonts.mcLaren(
                                  color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 5,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Fixed height container",
                                style: GoogleFonts.mcLaren(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  width: 5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Row",
                                          style: GoogleFonts.mcLaren(
                                              color: Colors.purple,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.red,
                                                width: 5,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Expanded\nchart",
                                                style: GoogleFonts.mcLaren(
                                                    color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    margin: const EdgeInsets.only(
                                      left: 5,
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 5,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Fixed width container",
                                        style: GoogleFonts.mcLaren(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Container BoxDecoration
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/im_background_home.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Colors.red,
                                Colors.cyan,
                                Colors.black,
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              tileMode: TileMode.repeated,
                              stops: [0.1, 0.2, 0.9])),
                    ),
                  ),

                  /// Button Cool
                  TextButton(
                    style: textButtonStyle,
                    onPressed: () {},
                    child: Text(
                      "Text Button",
                      style: GoogleFonts.mcLaren(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(width: 2, color: Colors.red),
                    ),
                    onPressed: () {},
                    child: const Text(
                        'OutlinedButton with custom shape and border'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 4),
                    onPressed: () {},
                    child: const Text('ElevatedButton with custom elevations'),
                  ),
                  const SizedBox(
                    height: 500,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
