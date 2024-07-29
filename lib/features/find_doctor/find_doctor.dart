import 'package:flutter/material.dart';

import '../../common/sized_box/sized_box.dart';
import '../../common/widgets/symptoms.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({super.key});

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    String? selectedLocation;
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: const Color(0xff253292),
        centerTitle: false,
        title: const Text("Find doctor", style: TextStyle(fontSize: 15,color: Colors.white)),
        actions: [
          SizedBox(
            width: screenWidth * 0.4,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Bangalore',
                hintStyle: const TextStyle(color: Colors.white,fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                isDense: true,
              ),
              value: selectedLocation,
              onChanged: (String? value) {
                setState(() {
                  selectedLocation = value;
                });
              },
              items: ['Bangalore', 'Chennai', 'Hyderabad', 'Andra'].map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 12,color: Colors.black),
                  ),
                );
              }).toList(),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              iconSize: 20,
              style: const TextStyle(color: Colors.white),
            ),
          )

        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBoxes.normalSizedBox,
            const  Text(
              "All Specialities ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBoxes.normalSizedBox,
            SizedBox(child: AllSpecialities()),
          
          ],),
        ),
      ),
    );

  }
}
