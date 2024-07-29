import 'package:flutter/material.dart';
import 'package:practo_main/common/sized_box/sized_box.dart';
import 'package:practo_main/common/widgets/common_textfield.dart';
import 'package:practo_main/features/find_doctor/find_doctor.dart';

import '../../common/widgets/symptoms.dart';

class ConsultDoctor extends StatelessWidget {
  const ConsultDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: const Color(0xff253292),
        centerTitle: false,
        title: const Text("Consult a doctor", style: TextStyle(fontSize: 15,color: Colors.white)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FindDoctor(),));
            },
            child: const Text(
              "HELP",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBoxes.normalSizedBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.01),
                    child: Container(
                      width: screenWidth * 0.85,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffD1D6FF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Stack(
                          children: [
                            const Text(
                              "Free follow-up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Positioned(
                              top: 20,
                              child: Text(
                                "For 7 days with every consultation",
                                style: TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              left: 180,
                              child: Image(
                                image: AssetImage("asset/msg.png"),
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Positioned(
                              top: 50,
                              child: Row(
                                children: [
                                  const Text("Know More"),
                                  SizedBoxes.rowSizedBox,
                                  IconButton(
                                    iconSize: 10.0,
                                    padding: const EdgeInsets.all(4.0),
                                    style: ButtonStyle(
                                      shadowColor: WidgetStateProperty.all(Colors.black),
                                      elevation: WidgetStateProperty.all(3),
                                      backgroundColor: WidgetStateProperty.all(Colors.white),
                                      minimumSize: WidgetStateProperty.all(const Size(5.0, 5.0)),
                                      padding: WidgetStateProperty.all(const EdgeInsets.all(4.0)),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.01),
                    child: Container(
                      width: screenWidth * 0.85,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff99A1E3),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Stack(
                          children: [
                            const Text(
                              "Free follow-up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Positioned(
                              top: 20,
                              child: Text(
                                "For 7 days with every consultation",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              left: 180,
                              child: Image(
                                image: AssetImage("asset/msg.png"),
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Positioned(
                              top: 50,
                              child: Row(
                                children: [
                                  const Text("Know More"),
                                  SizedBoxes.rowSizedBox,
                                  IconButton(
                                    iconSize: 10.0,
                                    padding: const EdgeInsets.all(4.0),
                                    style: ButtonStyle(
                                      shadowColor: WidgetStateProperty.all(Colors.black),
                                      elevation: WidgetStateProperty.all(3),
                                      backgroundColor: WidgetStateProperty.all(Colors.white),
                                      minimumSize: WidgetStateProperty.all(const Size(5.0, 5.0)),
                                      padding: WidgetStateProperty.all(const EdgeInsets.all(4.0)),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.02),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const  Text(
                    "Search Health and Problem / Symptoms",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBoxes.normalSizedBox,
                  const  CustomTextField(
                    hintText: "Search symptoms. Eg: Cold, cough, fever",
                    prefixIcon: Icons.search,
                  ),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "CHOOSE FROM SPECIALITIES",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBoxes.normalSizedBox,
                  SizedBox(child: Specialities()),
               SizedBoxes.normalSizedBox,
                  const  Text(
                    "Common Health Issues",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBoxes.normalSizedBox,
                  SizedBox(child: healthissues()),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "Symptoms relevant to you",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: healthissues()),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "General Physician",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: GeneralPhysician()),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "Orthopedist",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: GeneralPhysician()),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "Dermatologist",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: GeneralPhysician()),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "Ear-Nose-Throat(ENT)Specialist",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: GeneralPhysician()),
                  SizedBoxes.normalSizedBox,
                  const  Text(
                    "Gynecologist/Obstetrician",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(child: GeneralPhysician()),
                  SizedBoxes.normalSizedBox,

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
