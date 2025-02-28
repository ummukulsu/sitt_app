import 'package:flutter/material.dart';
import 'package:sitt_app/bottom.dart';
import 'package:sitt_app/custome_card.dart';
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedLanguage = "English";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color:
                              selectedLanguage == "English"
                                  ? Colors.black
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "English",
                          style: TextStyle(
                            color:
                                selectedLanguage == "English"
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedLanguage = "عربي";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color:
                              selectedLanguage == "عربي"
                                  ? Colors.black
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "عربي",
                          style: TextStyle(
                            color:
                                selectedLanguage == "عربي"
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 200),

            // Welcome Text
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Please select a country",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCountry = "United Arab Emirates";
                      });
                    },
                    child: Container(
                      width: 172,
                      height: 140,
                      decoration: BoxDecoration(
                        color:
                            selectedCountry == "United Arab Emirates"
                                ? Colors.black.withOpacity(0.05)
                                : Colors.white,
                        border: Border.all(
                          color:
                              selectedCountry == "United Arab Emirates"
                                  ? Colors.black
                                  : Colors.grey.shade300,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/uae_flag.png", width: 60),
                          const SizedBox(height: 10),
                          const Text(
                            "United Arab Emirates",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCountry = "Saudi Arabia";
                      });
                    },
                    child: Container(
                      width: 172,
                      height: 140,
                      decoration: BoxDecoration(
                        color:
                            selectedCountry == "Saudi Arabia"
                                ? Colors.black.withOpacity(0.05)
                                : Colors.white,
                        border: Border.all(
                          color:
                              selectedCountry == "Saudi Arabia"
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
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Please note that our range of services varies by country",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            const Spacer(),

            BottomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavScreen()),
                );
              },
              title: "Continue",
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
