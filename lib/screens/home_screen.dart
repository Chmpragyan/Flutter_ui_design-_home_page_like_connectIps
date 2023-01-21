import 'package:connect_ips/models/fund_transfer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int box = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 19, 126, 213),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset("assets/svg/icon-burger.svg"),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "connectIPS",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                ),
              ),
      
              // Fund Transfer
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                      // ),
                      Text(
                        "Fund Transfer",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 130,
                padding: EdgeInsets.only(left: 16),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: fundTransfer.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 19, top: 5),
                            height: 90,
                            width: 80,
                            child: SvgPicture.asset(
                              "assets/svg/${fundTransfer[index].image}",
                              fit: BoxFit.contain,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 0.1,
                                        spreadRadius: 0.1,
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Container(
                              child: Text(
                                fundTransfer[index].name,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
      
              // What's new
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                      // ),
                      Text(
                        "What's new",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 130,
                padding: EdgeInsets.only(left: 16),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: fundTransfer.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 19, top: 5),
                            height: 90,
                            width: 80,
                            child: SvgPicture.asset(
                              "assets/svg/${fundTransfer[index].image}",
                              fit: BoxFit.contain,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 0.1,
                                        spreadRadius: 0.1,
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Container(
                              child: Text(
                                fundTransfer[index].name,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
      
              // Favourite Creditors
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favourite Creditors",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.edit),
                          Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Add your most used creditors here for quick access",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 103, 119, 130),
                        ),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: box,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Icon(Icons.add),
                                margin: EdgeInsets.only(right: 19, top: 5),
                                height: 90,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 0.1,
                                        spreadRadius: 0.1,
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      
              // Linked Account
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Linked Account",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.add),
                          Text(
                            "Add More",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Use these accounts to transfer funds",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 103, 119, 130),
                        ),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: box,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Icon(Icons.add),
                                margin: EdgeInsets.only(right: 19, top: 5),
                                height: 90,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 0.1,
                                        spreadRadius: 0.1,
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
