import 'package:flutter/material.dart';
import 'package:sitt_app/home.dart';

class CountrySelectionScreen extends StatefulWidget {
  @override
  _CountrySelectionScreenState createState() => _CountrySelectionScreenState();
}

class _CountrySelectionScreenState extends State<CountrySelectionScreen> {
  String selectedLanguage = "English";
  String selectedCountry = "United Arab Emirates";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            // Language Selector
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _languageButton("English", selectedLanguage == "English"),
                    _languageButton("عربي", selectedLanguage == "عربي"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Welcome Text
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please select a country",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // Country Selection (Without Custom Widget)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCountry = "United Arab Emirates";
                    });
                  },
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: selectedCountry == "United Arab Emirates"
                          ? Colors.black.withOpacity(0.05)
                          : Colors.white,
                      border: Border.all(
                        color: selectedCountry == "United Arab Emirates"
                            ? Colors.black
                            : Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/uae_flag.png", width:20),
                        const SizedBox(height: 10),
                        const Text(
                          "United Arab Emirates",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCountry = "Saudi Arabia";
                    });
                  },
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: selectedCountry == "Saudi Arabia"
                          ? Colors.black.withOpacity(0.05)
                          : Colors.white,
                      border: Border.all(
                        color: selectedCountry == "Saudi Arabia"
                            ? Colors.black
                            : Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/saudi_flag.png", width: 60),
                        const SizedBox(height: 10),
                        const Text(
                          "Saudi Arabia",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              "Please note that our range of services varies by country.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const Spacer(),

            // Continue Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Continue", style: TextStyle(fontSize: 16, color: Colors.white)),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _languageButton(String text, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = text;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
