import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Home/myfavorite.dart';
import 'cart.dart';
class Productandprice extends StatelessWidget {
  const Productandprice({super.key});

  @override
  Widget build(BuildContext context) {
    final numcartt = Provider.of<Cart>(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                child: Text(
                  "${numcartt.selectesproducts.length}",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                padding: EdgeInsets.all(3),
                // decoration: BoxDecoration(
                //     color: Color.fromARGB(211, 164, 255, 193),
                //     shape: BoxShape.circle),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Myfavorite(),
                        ));
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
