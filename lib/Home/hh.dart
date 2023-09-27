import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class hh extends StatefulWidget {

  const hh({Key? key}) : super(key: key);

  @override
  State<hh> createState() => _hhState();
}

class _hhState extends State<hh> {
 Future getpost() async{
   var url="https://cloud.appwrite.io/console/project-6495b24652a37d2e8739/databases/database-6495ba3a590c4598baf1/collection-6495ba418f8011b908d0";
   var response =await http.get(url as Uri);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
