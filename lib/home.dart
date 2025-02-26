import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: 'Services'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'My Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              
              // Top App Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 28),
                  Text(
                    "Sitt",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.shopping_cart_outlined, size: 28),
                      const SizedBox(width: 20),
                      Icon(Icons.search, size: 28),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Header Image
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: Image.asset(
              //     "assets/header_image.jpg",
              //     height: 180,
              //     width: double.infinity,
              //     fit: BoxFit.cover,
              //   ),
              // ),

              const SizedBox(height: 20),

              // Services Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All >",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

              // Services Grid
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.6,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> titles = [
                    "Home Services",
                    "Physiotherapy",
                    "Lab Services",
                    "Nursing Services"
                  ];
                  // List<String> images = [
                  //   "assets/home_services.jpg",
                  //   "assets/physiotherapy.jpg",
                  //   "assets/lab_services.jpg",
                  //   "assets/nursing_services.jpg"
                  // ];
                  // return _serviceCard(titles[index], images[index]);
                },
              ),

              const SizedBox(height: 20),

              // WhatsApp Contact Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    // Icon(Icons.whatsapp, color: Colors.green, size: 40),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Do you need help?",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Contact us via WhatsApp Now",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Contact Us", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Featured Packages
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured Packages",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All >",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

              // Featured Packages List
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _packageCard("Home visit doctor, nursing assistant", "250 SAR"),
                    const SizedBox(width: 10),
                    _packageCard("Home visit doctor, nursing assistant", "250 SAR"),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _serviceCard(String title, String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Image.asset(imagePath, width: double.infinity, height: double.infinity, fit: BoxFit.cover),
          Container(
            color: Colors.black.withOpacity(0.4),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _packageCard(String title, String price) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ClipRRect(
          //   borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          //   child: Image.asset(
          //     "assets/package_image.jpg",
          //     width: double.infinity,
          //     height: 120,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(price, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}