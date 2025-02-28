import 'package:flutter/material.dart';
import 'package:sitt_app/bottom.dart';
import 'package:sitt_app/custome_card.dart';
import 'package:sitt_app/home.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/paymnt.png"),
            const SizedBox(height: 30),
            const Text(
              "Thank you!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            const Text(
              "Your booking has been successfully placed.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              overflow: TextOverflow.ellipsis,
            ),SizedBox(height: 30,),
            BottomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavScreen()),
                );
              },
              title: "Home",
            ),
          ],
        ),
      ),
    );
  }
}
