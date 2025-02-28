import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sitt_app/address.dart';
import 'package:sitt_app/paymnt.dart';
import 'package:sitt_app/custome_card.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String? selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Select Address Section
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: const Text(
                "Select Address",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            AddressCard(
              title: "Home",
              address: "Riyadh, al oud street",
              phone: "0505543563",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectAddress()),
                );
              },
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add New Address",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8),
                 CircleAvatar(backgroundColor: const Color.fromARGB(255, 248, 247, 247),radius:18,child:  IconButton(
                      onPressed: () {Navigator.pop(context);},
                      icon: PhosphorIcon(PhosphorIcons.plus(),color: Colors.black,size: 20,),
                    ),)
              ],
            ),
            const SizedBox(height: 20),

            // Payment Method
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Payment method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),

            // Apple Pay & Card Payment Selection
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedPayment = "Apple Pay";
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          selectedPayment == "Apple Pay"
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        const Text("Apple Pay"),
                        const Spacer(),
                        Image.asset("assets/apple.png", width: 30),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedPayment = "Card Payment";
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          selectedPayment == "Card Payment"
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        const Text("Card Payment"),
                        const Spacer(),
                        Image.asset("assets/master.png", width: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Service List and Pricing
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Home visit doctor, nursing",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "250 SAR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text("assistant"),
                              SizedBox(height: 3),
                              Text(
                                "Saturday 8, 1:30PM",
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Annual subscription, two visits",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "250 SAR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3),
                              Text("per month (nurse)"),
                              Text(
                                "Saturday 8, 2:30PM",
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Subtotal",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "500 SAR",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "VAT 15%",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "75 SAR",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "575 SAR",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          BottomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                );
              },
              title: "Book Now",
            ),
          
          ],
        ),
      ),
    );
  }
}
