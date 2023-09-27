import 'package:flutter/material.dart';

import '../Share/appbar_actions.dart';
import '../Share/model/item.dart';

class Detils extends StatefulWidget {
  Item product;
  Detils({required this.product});

  @override
  State<Detils> createState() => _DetilsState();
}

class _DetilsState extends State<Detils> {
  //const Detils({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(103, 74, 145, 58),
        appBar: AppBar(
          actions: [Productandprice()],
          backgroundColor: Color.fromARGB(103, 74, 145, 58),        title: Text("Detils"),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.product.imgpath),

                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "new",
                        style: TextStyle(fontSize: 12,color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 77,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "${widget.product.name}",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Benefits :",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "${widget.product.Benefits}",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  textAlign: TextAlign.center,

                ),
                SizedBox(height: 10,),
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Diseases that can affect :",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                SizedBox(height: 10,),
                Text(
                  "    ${widget.product.Diseases_that_can_affect}",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  textAlign: TextAlign.center,

                ),
                SizedBox(height: 10,),
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Treatment :",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                SizedBox(height: 10,),
                Text(
                  "    ${widget.product.Treatment}",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  textAlign: TextAlign.center,

                ),

              ],
            )),
      ),
    );
  }
}
