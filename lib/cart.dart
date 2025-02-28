import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sitt_app/custome_card.dart';
import 'package:sitt_app/checkout.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {
      "service": "Home visit doctor, nursing assistant",
      "date": "Saturday 8, 1:30PM",
      "price": "250 SAR",
    },
    {
      "service": "Home visit doctor, nursing assistant",
      "date": "Saturday 8, 1:30PM",
      "price": "250 SAR",
    },
    {
      "service": "Home visit doctor, nursing assistant",
      "date": "Saturday 8, 1:30PM",
      "price": "250 SAR",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemCard(cartItems[index]);
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal", style: TextStyle(fontSize: 16)),
                Text(
                  "750 SAR",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          BottomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutPage()),
              );
            },
            title: "CheckOut",
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final Map<String, dynamic> item;

  CartItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Service & Price Labels
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Service",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  "Price",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),

          // Service Name & Price in the Same Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start, // Align at the top
            children: [
              Expanded(
                child: Text(
                  item["service"],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 10), // Spacing between text
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  item["price"],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        

          // Date & Delete Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item["date"],
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: PhosphorIcon(PhosphorIcons.trash(), color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

