import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sitt_app/custome_card.dart';

class SelectAddress extends StatefulWidget {
  const SelectAddress({super.key});

  @override
  State<SelectAddress> createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home visit doctor, nursing assistant",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                   CircleAvatar(backgroundColor: const Color.fromARGB(255, 248, 247, 247),radius:18,child:  IconButton(
                      onPressed: () {Navigator.pop(context);},
                      icon: PhosphorIcon(PhosphorIcons.x(),color: Colors.black,size: 20,),
                    ),)
                ],
              ),
            ),
            Divider(color: const Color.fromARGB(255, 238, 236, 236)),
            AddressCard(
              title: "Home",
              address: "Riyadh, al oud street",
              phone: "0505543563",
              onTap: () {},
            ),

            AddressCard(
              title: "Home 2",
              address: "Riyadh, al oud street",
              phone: "0505543563",
              onTap: () {},
            ),
            AddressCard(
              title: "Home 3",
              address: "Riyadh, al oud street",
              phone: "0505543563",
              onTap: () {},
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Add New Address"),SizedBox(width: 10,),Icon(Icons.add)]),
          ],
        ),
      ),
    );
  }
}
