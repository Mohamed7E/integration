import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Share/cart.dart';
import '../Share/model/item.dart';
import 'detils.dart';

class My_account extends StatelessWidget {
  const My_account({super.key});
  @override
  Widget build(BuildContext context) {
    final numcartt = Provider.of<Cart>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 30,
            mainAxisSpacing: 38,
          ),
          itemCount: items.length,

          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detils(
                          product: items[index],
                        )));
              },
              child: GridTile(
                child: Stack(
                  children: [
                    Positioned(
                      top: -3,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(43),
                          child: Image.asset(items[index].imgpath)),
                    )
                  ],
                ),
                footer: GridTileBar(
                  trailing: IconButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      numcartt.add(items[index]);
                    },
                    icon: Icon(Icons.favorite),
                  ),



                  title: Center(
                    child: Text(
                      " ${items[index].name}",
                      style: TextStyle(fontSize: 20.0,
                          fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),

                ),

              ),
            );
          }
      ),

    );
  }
}
