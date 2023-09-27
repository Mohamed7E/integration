import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Share/appbar_actions.dart';
import '../Share/cart.dart';
import '../Share/model/item.dart';
import 'detils.dart';
class Myfavorite extends StatelessWidget {
  const Myfavorite({super.key});

  @override
  Widget build(BuildContext context) {
    final numcartt = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(103, 74, 145, 58),
      appBar: AppBar(

        backgroundColor: Color.fromARGB(103, 74, 145, 58),
        title: Text("ChockOut"),
        actions: [Productandprice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: numcartt.selectesproducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(numcartt.selectesproducts[index].name),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detils(
                                  product: items[index],
                                )));
                      },
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            numcartt.selectesproducts[index].imgpath),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          numcartt.delet(numcartt.selectesproducts[index]);
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
