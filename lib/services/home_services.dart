import 'package:flutter/material.dart';
import 'package:sitt_app/services/service_details.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // ✅ Top Image & Back Button
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/12059 1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: const Center(
                  child: Text(
                    "Home Services",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ✅ TabBar
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: const [Tab(text: "Daily Services"), Tab(text: "Packages")],
          ),

          const SizedBox(height: 12),

          // ✅ TabBarView
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildGridView(), // ✅ Daily Services GridView
                _buildEmptyView(), // ✅ Packages Tab (Empty)
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ✅ GridView with Fixes
  Widget _buildGridView() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Expanded(
        child: GridView.builder(
          itemCount: 4,
          shrinkWrap: true, // ✅ Ensures GridView takes only required space
          physics:
              const AlwaysScrollableScrollPhysics(), // ✅ Allow GridView to scroll
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ServiceDetailPage(),
                  ),
                );
              },
              child: packageCard(
                "Home visit doctor\nnursing assistant",
                "250",
                "SAR",
              ),
            );
          },
        ),
      ),
    );
  }

  // ✅ Empty View Fix
  Widget _buildEmptyView() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: const Text(
        "No Packages Available",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
      ),
    );
  }
}

// ✅ Clean Package Card
Widget packageCard(String title, String price, String pricetitle) {
  return Container(
    width: 193,
    height: 296,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          // ✅ Prevents overflow by making image take available space
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              "assets/person.png",
              width: 193,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // ✅ Prevents overflow
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
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
                  const SizedBox(width: 5),
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
// import 'package:flutter/material.dart';
// import 'package:sitt_app/service_details.dart';

// class ServicePage extends StatefulWidget {
//   const ServicePage({super.key});

//   @override
//   State<ServicePage> createState() => _ServicePageState();
// }

// class _ServicePageState extends State<ServicePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 190,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/12059 1.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 40,
//                   left: 15,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: IconButton(
//                       icon: const Icon(Icons.arrow_back, color: Colors.black),
//                       onPressed: () {},
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 20,
//                   left: 0,
//                   right: 0,
//                   child: const Center(
//                     child: Text(
//                       "Home Services",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const TabBar(
//               labelColor: Colors.black,
//               unselectedLabelColor: Colors.grey,
//               indicatorColor: Colors.black,
//               tabs: [
//                 Tab(text: "Daily Services"),
//                 Tab(text: "Packages"),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // Daily Services with onTap Navigation
//                   Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: GridView.builder(
//                       itemCount: 4,
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 12,
//                         mainAxisSpacing: 12,
//                         childAspectRatio: 0.7,
//                       ),
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const ServiceDetailPage(),
//                               ),
//                             );
//                           },
//                           child: packageCard("Home visit doctor assistant", "250", "SAR"),
//                         );
//                       },
//                     ),
//                   ),

//                   // Packages Tab (No Navigation)
//                   Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: GridView.builder(
//                       itemCount: 4,
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 12,
//                         mainAxisSpacing: 12,
//                         childAspectRatio: 0.7,
//                       ),
//                       itemBuilder: (context, index) {
//                         return packageCard("Package Name", "500", "SAR");
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// // Package Card
// Widget packageCard(String title, String price, String pricetitle) {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       color: Colors.white,
//       boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
//     ),
//     child: SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(10),
//               topRight: Radius.circular(10),
//             ),
//             child: Image.asset(
//               "assets/person.png",
//               width: double.infinity,
//               height: 199,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       price,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(width: 5),
//                     Text(
//                       pricetitle,
//                       style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }