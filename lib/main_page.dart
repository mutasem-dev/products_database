import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'product.dart';
import 'package:toast/toast.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController nameController =  TextEditingController();
  TextEditingController quantityController=  TextEditingController();
  TextEditingController priceController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Product information',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            TextField(
              controller: quantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Quantity',
              ),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Price',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton.icon(
                  onPressed: () {
                    if (nameController.text.isEmpty ||
                        quantityController.text.isEmpty ||
                        priceController.text.isEmpty) {
                      Toast.show('Please fill all fields', context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                      return;
                    }
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add Product'),
                ),
                RaisedButton.icon(
                  onPressed: () {
                    if (nameController.text.isEmpty ||
                        quantityController.text.isEmpty ||
                        priceController.text.isEmpty) {
                      Toast.show('Please fill all fields', context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                      return;
                    }
                  },
                  icon: Icon(Icons.update),
                  label: Text('Update Product'),
                ),
              ],
            ),
            Text(
              'Your Products:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  letterSpacing: 2.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'delete all',
        onPressed: () {

        },
        child: Icon(Icons.delete_sweep),
      ),
    );
  }
}