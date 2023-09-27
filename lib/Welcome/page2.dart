import 'package:flutter/material.dart';

import 'login/login.dart';
class Welcome2 extends StatelessWidget {
  const Welcome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(103, 210, 215, 208),


        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 12, 192, 0),
          onPressed: (){
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context)=>LoginScreen(),),
                    (route){
                  return false;
                });
          },
          // tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward_ios),
        ), //
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("asesst/imge/55.jpg",
                      height: 270,),
                    Text(
                      'Experience the future of sustainable agriculture with our innovative smart irrigation system, utilizing cutting-edge sensors, a user-friendly smartphone application, and a water pump for optimal water conservation and increased yields',
                      style: TextStyle(
                        fontSize:20.0,color: Color.fromARGB(255, 12, 192, 0),
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    // Container(
                    //   width: double.infinity,
                    //   height: 40.0,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     color: Colors.blue,
                    //
                    //   ),
                    //   child: MaterialButton(
                    //     onPressed: () {
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context)=>LoginScreen(),));
                    //       //MaterialPageRoute(builder: (context)=>Home(),));
                    //
                    //
                    //     },
                    //     child: Text(
                    //       'LOGIN',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                  ]),
            ),
          ),
        ),
      ),
    );
  }
}