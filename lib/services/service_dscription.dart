import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ServiceDscription extends StatefulWidget {
  const ServiceDscription({super.key});

  @override
  State<ServiceDscription> createState() => _ServiceDscriptionState();
}

class _ServiceDscriptionState extends State<ServiceDscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                   CircleAvatar(backgroundColor: const Color.fromARGB(255, 248, 247, 247),radius:18,child:  IconButton(
                      onPressed: () {Navigator.pop(context);},
                      icon: PhosphorIcon(PhosphorIcons.x(),color: Colors.black,size: 20,),
                    ),)
                  ],
                ),
              ),
              Divider(color: const Color.fromARGB(255, 226, 223, 223)),
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Our Home Visit Doctor service provides comprehensive, patient-centered medical care in the comfort of your home. By offering personalized consultations and treatments in a familiar setting, we aim to reduce the stress and inconvenience often associated with hospital or clinic visits.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Key Features",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                children: [
                  Text("1.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  Text("Professional Assessment: A licensed ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "physicianconducts a thorough examination and reviews your medical history to ensure accurate diagnosis ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
                )
              ),
              
              SizedBox(height: 4),
              Row(
                children: [
                  Text("2.",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Text("Convenient Scheduling:Appointments",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "flexible to suit your availability, reducing waiting times and travel concerns",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
                ),
              ),SizedBox(height: 4,),
              Row(
                children: [
                  Text("3.",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Text("Diagnostic Services: Basic diagnostic tests",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  " (such as blood pressure checks, blood sugar\n tests, and simple lab work)can be performed \n son-site when needed",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
                ),
              ),SizedBox(height: 4,),
              Row(
                children: [
                  Text("4.",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Text("Treatment & Prescriptions: From routine",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "follow-ups to acute care, our doctor  can provide tailored treatment plans and prescription medications.",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
                ),
              ),SizedBox(height: 4,),
              Row(
                children: [
                  Text("5.",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Text("Referrals & Coordination: If specialized ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "care is necessary, our team will coordinate with relevant specialists or hospitals to streamline your healthcare journey",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
