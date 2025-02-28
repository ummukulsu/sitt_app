import 'package:flutter/material.dart';
import 'package:sitt_app/cart.dart';
import 'package:sitt_app/checkout.dart';
import 'package:sitt_app/services/service_dscription.dart';

void main() {
  runApp(const MaterialApp(home: ServiceDetailPage()));
}

class ServiceDetailPage extends StatefulWidget {
  const ServiceDetailPage({super.key});

  @override
  State<ServiceDetailPage> createState() => _ServiceDetailPageState();
}

class _ServiceDetailPageState extends State<ServiceDetailPage> {
  int selectedDate = 8; // Selected date
  int selectedTime = 13; // Selected hour (1:30 PM)
  String selectedButton = "";
  bool showAvailableOnly = true;

  final List<int> availableTimes = [10, 11, 12, 13]; // Available hours
  final List<int> allTimes = [10, 11, 12, 13, 14]; // All times including unavailable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Image & Back Button
          Stack(
            children: [
              Image.asset(
                "assets/person.png",
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ],
          ),

          // Expanded column to prevent ParentDataWidget error
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Home visit doctor, nursing assistant",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "250 SAR",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 35),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFDFDFD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.medical_services, color: Colors.red),
                            SizedBox(width: 10),
                            Text("Service description"),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios, size: 18),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServiceDscription(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),
                  const Text(
                    "Select Date",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  // Date Selector
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(6, (index) {
                      int date = 7 + index;
                      return GestureDetector(
                        onTap: () => setState(() => selectedDate = date),
                        child: Column(
                          children: [
                            Text(
                              ["Fri", "Sat", "Sun", "Mon", "Tue", "Wed"][index],
                              style: TextStyle(
                                color: date == selectedDate ? Colors.black : Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: date == selectedDate ? Colors.black : const Color(0xFFF1F0F0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$date",
                                style: TextStyle(
                                  color: date == selectedDate ? Colors.white : Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Select Time",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Show available slots only",
                            style: TextStyle(fontSize: 12),
                          ),
                          Switch(
                            value: showAvailableOnly,
                            onChanged: (value) => setState(() => showAvailableOnly = value),
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.grey,
                            thumbColor: MaterialStateProperty.all(Colors.white), // ✅ Correct usage
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Time Slots
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: (showAvailableOnly ? availableTimes : allTimes).map((time) {
                      bool isAvailable = availableTimes.contains(time);
                      return GestureDetector(
                        onTap: isAvailable ? () => setState(() => selectedTime = time) : null,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: selectedTime == time ? Colors.black : const Color(0xFFECEBEB),
                          ),
                          child: Text(
                            "$time:00 ${time < 12 ? "AM" : "PM"}",
                            style: TextStyle(
                              color: selectedTime == time
                                  ? Colors.white
                                  : isAvailable
                                      ? Colors.black
                                      : Colors.grey,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  const Spacer(), // Corrected usage
                ],
              ),
            ),
          ),

          // Buttons
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() => selectedButton = "cart");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: selectedButton == "cart" ? Colors.black : Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, size: 20, color: selectedButton == "cart" ? Colors.white : Colors.black),
                          const SizedBox(width: 5),
                          Text(
                            "Add to Cart",
                            style: TextStyle(color: selectedButton == "cart" ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() => selectedButton = "book");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: selectedButton == "book" ? Colors.black : Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle, size: 20, color: selectedButton == "book" ? Colors.white : Colors.black),
                          const SizedBox(width: 5),
                          Text(
                            "Book Service",
                            style: TextStyle(color: selectedButton == "book" ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
