import 'package:flutter/material.dart';

import '../../Home/Home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formkey= GlobalKey<FormState>();
  bool ispassword =true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(103, 145, 190, 131),

        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("asesst/imge/login.jpg",
                      height: 270,),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize:40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Email address must not be Empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(

                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: ispassword,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'password address must not be Empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              ispassword=!ispassword;
                            });
                          },
                          icon:Icon(
                            ispassword ?Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:Color.fromARGB(255, 40, 128, 36),


                        ),

                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context,
                                MaterialPageRoute(builder: (context)=>Home(),),
                                    (route){
                                  return false;
                                });

                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}