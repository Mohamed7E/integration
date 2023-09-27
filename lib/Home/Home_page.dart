import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(103, 27, 59, 21),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 2, top: 10, right: 20, bottom: 20),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Material(
                        color: Color.fromARGB(255, 79, 149, 95),
                        elevation: 8,
                        borderRadius: BorderRadius.circular(28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ink.image(image: AssetImage(
                                  'asesst/imge/Humidity.jpg'),
                                height: 150,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Raspberry Pi", style: TextStyle(
                                  fontSize: 30, color: Colors.white),),
                              SizedBox(height: 10),
                            ],
                          ),

                        ),
                      ),
                      SizedBox(width: 10,),
                      Material(
                        color: Color.fromARGB(255, 79, 149, 95),
                        elevation: 8,
                        borderRadius: BorderRadius.circular(28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ink.image(image: AssetImage(
                                  'asesst/imge/Humidity.png'),
                                height: 150,
                                width: 200,

                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Humidity", style: TextStyle(
                                  fontSize: 30, color: Colors.white),),
                              SizedBox(height: 10),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(

                    children: [

                      Material(
                        color: Color.fromARGB(255, 79, 149, 95),
                        elevation: 8,
                        borderRadius: BorderRadius.circular(28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ink.image(image: AssetImage(
                                  'asesst/imge/temperature.png'),
                                height: 150,
                                width: 200,

                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("temperature", style: TextStyle(
                                  fontSize: 30, color: Colors.white),),
                              SizedBox(height: 10),
                            ],
                          ),

                        ),
                      ),
                      SizedBox(width: 10, height: 20,),
                      Material(
                        color: Color.fromARGB(255, 79, 149, 95),
                        elevation: 8,
                        borderRadius: BorderRadius.circular(28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ink.image(image: AssetImage(
                                  'asesst/imge/ارز صينى.jpg'),
                                height: 150,
                                width: 200,

                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("data", style: TextStyle(
                                  fontSize: 30, color: Colors.white),),
                              SizedBox(height: 10),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10, height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Center(
                        child: Material(
                          color: Color.fromARGB(255, 79, 149, 95),
                          elevation: 8,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Ink.image(image: AssetImage('asesst/imge/ارز صينى.jpg'),
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text("data", style: TextStyle(fontSize: 30,
                                    color: Colors.white),),
                                SizedBox(height: 10),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}