import 'package:flutter/material.dart';
import 'package:sitt_app/custome_card.dart';

class Serviceview extends StatelessWidget {
  const Serviceview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
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
          "Services",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
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
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(images[index], fit: BoxFit.cover),
                          Container(color: Colors.black.withOpacity(0.3)),
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
          ],
        ),
      ),
    );
  }
}
