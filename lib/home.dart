import 'package:flutter/material.dart';
import 'package:sitt_app/services/serviceview.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, size: 28),
        title: Image.asset("assets/sitt_logo.png", width: 68),
        actions: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 248, 247, 247),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            ),
          ),
          SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 248, 247, 247),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Container(
                width: 430,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Services Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Serviceview()),
                      );},
                    child: const Text(
                      "View All >",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                      "Nursing Services",
                    ];
                    List<String> images = [
                      "assets/homeservice.png",
                      "assets/physio.png",
                      "assets/lab.png",
                      "assets/nursing.png",
                    ];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          fit:
                              StackFit
                                  .expand, 
                          children: [
                            Image.asset(images[index], fit: BoxFit.cover),
                            Container(
                              color: Colors.black.withOpacity(
                                0.3,
                              ), 
                            ),
                            Center(
                              child: Text(
                                titles[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // WhatsApp Contact Section
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 255, 246),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    // Background Image Positioned on the Right
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Opacity(
                        opacity: 0.50, // Faded background effect
                        child: Image.asset(
                          "assets/help.png", // Background Image
                          width: 107,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Foreground Content (Row Layout)
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        // WhatsApp Icon
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(221, 37, 211, 102),
                          child: Image.asset("assets/whats.png"),
                        ),
                        const SizedBox(width: 12),

                        // Text and Button Column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Do you need help?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(221, 113, 163, 84),
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  text: "Contact us via WhatsApp Now ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(221, 84, 130, 100),
                                  ),
                                  children: [],
                                ),
                              ),
                              const SizedBox(height: 6),

                              // Contact Us Button
                              Container(
                                height: 28,
                                width: 132,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(221, 37, 211, 102),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Contact Us",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ), // Space to balance the layout
                      ],
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
                    onPressed: () {

                    },
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
                    packageCard(
                      "Home visit doctor, nursing assistant",
                      "250",
                      "SAR",
                    ),
                    const SizedBox(width: 10),
                    packageCard(
                      "Home visit doctor, nursing assistant",
                      "250",
                      "SAR",
                    ),
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
          Image.asset(
            imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  packageCard(String title, String price, String pricetitle) {
    return Container(
      width: 193,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              "assets/person.png",
              width: double.infinity,
              height: 199,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      pricetitle,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
