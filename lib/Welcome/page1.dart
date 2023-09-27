import 'package:flutter/material.dart';
import 'package:irrigation/Welcome/page2.dart';
class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: const Color.fromARGB(103, 210, 215, 208),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 12, 192, 73),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const Welcome2(),));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward_ios),
        ), //
        // appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("asesst/imge/56.jpg",
                      height: 270,),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize:40.0,color: Color.fromARGB(255, 12, 192, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Center(
                      child: Text(
                        'The smart irrigation , significant water savings and improved crop yields can be achieved. With continued innovation and development, this technology has the potential to revolutionize the agricultural industry and contribute to sustainable water usage practices worldwide.',
                        style: TextStyle(
                          fontSize:20.0,color: Color.fromARGB(255, 12, 192, 0),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
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
                    //           MaterialPageRoute(builder: (context)=>Welcome2(),));
                    //     },
                    //     child: Text(
                    //       'Next',
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