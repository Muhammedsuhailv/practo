import 'package:flutter/material.dart';

class SympToms extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"image": "asset/pregnancy.jpg", "label": "Pregnancy Issues"},
    {"image": "asset/bone.jpg", "label": "Knee Issues"},
    {"image": "asset/dental.jpg", "label": "Dental Care"},
    {"image": "asset/piles.jpg", "label": "Piles Treatment"},
    {"image": "asset/eye.jpg", "label": "Eye Care"},
    {"image": "asset/heart.jpg", "label": "Heart Care"},
    {"image": "asset/skin.jpg", "label": "Skin Care"},
    {"image": "asset/bone.jpg", "label": "Bone Care"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffD9D9D9),
                  backgroundImage: AssetImage(items[index]['image']!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}

class SympToms2 extends StatelessWidget {
  final List<Map<String, String>> items2 = [
    {"image": "asset/piles.jpg", "label": "PilesTreatment"},
    {"image": "asset/bone.jpg", "label": "Knee Issues"},
    {"image": "asset/eye.jpg", "label": "Cataract\n "},
    {"image": "asset/Fissure.jpg", "label": "Anal Fissure"},
    {"image": "asset/transplant.jpg", "label": "Hair\nTransplant"},
    {"image": "asset/kidney.jpg", "label": "Kidney\nStone"},
    {"image": "asset/stones.jpg", "label": "Gall\nstones"},
    {"image": "asset/circum.jpg", "label": "Circumcision"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:  Color(0xffD9D9D9),
                  backgroundImage: AssetImage(items2[index]['image']!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items2[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
class Specialities extends StatelessWidget {
  final List<Map<String, String>> items2 = [
    {"image": "asse/piles.jpg", "label": "Mental Wellness "},
    {"image": "asse/bone.jpg", "label": "Gynaecology"},
    {"image": "asse/eye.jpg", "label": "General Physician "},
    {"image": "asse/Fissure.jpg", "label": "Dermatology"},
    {"image": "asse/transplant.jpg", "label": "Orthopedic\n"},
    {"image": "asse/kidney.jpg", "label": "Pediatrics\n"},
    {"image": "asse/stones.jpg", "label": "Sexology\n"},
    {"image": "asse /eclip.png", "label": "View All\n"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:  Color(0xffD9D9D9),
                  backgroundImage: AssetImage(items2[index]['image']!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items2[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
class healthissues extends StatelessWidget {
  final List<Map<String, String>> items2 = [
    {"image": "asse/piles.jpg", "label": "Mental Wellness "},
    {"image": "asse/bone.jpg", "label": "Gynaecology"},
    {"image": "asse/eye.jpg", "label": "General Physician "},
    {"image": "asse/Fissure.jpg", "label": "Dermatology"},
    {"image": "asse/transplant.jpg", "label": "Orthopedic\n"},
    {"image": "asse/kidney.jpg", "label": "Pediatrics\n"},
    {"image": "asse/stones.jpg", "label": "Sexology\n"},
    {"image": "asse /eclip.png", "label": "Back pain\n"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffD9D9D9),
                  backgroundImage: AssetImage(items2[index]['image']!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items2[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
class AllSpecialities extends StatelessWidget {
  final List<Map<String, String>> items2 = [
    {"image": "asse/piles.jpg", "label": "Mental Wellness "},
    {"image": "asse/bone.jpg", "label": "Gynaecology"},
    {"image": "asse/eye.jpg", "label": "General Physician "},
    {"image": "asse/Fissure.jpg", "label": "Dermatology"},
    {"image": "asse/transplant.jpg", "label": "Orthopedic\n"},
    {"image": "asse/kidney.jpg", "label": "Pediatrics\n"},
    {"image": "asse/stones.jpg", "label": "Sexology\n"},
    {"image": "asse /eclip.png", "label": "Back pain\n"},
    {"image": "asse/piles.jpg", "label": "Mental Wellness "},
    {"image": "asse/bone.jpg", "label": "Gynaecology"},
    {"image": "asse/eye.jpg", "label": "General Physician "},
    {"image": "asse/Fissure.jpg", "label": "Dermatology"},
    {"image": "asse/transplant.jpg", "label": "Orthopedic\n"},
    {"image": "asse/kidney.jpg", "label": "Pediatrics\n"},
    {"image": "asse/stones.jpg", "label": "Sexology\n"},
    {"image": "asse /eclip.png", "label": "Back pain\n"},
    {"image": "asse /eclip.png", "label": "Back pain\n"},
    {"image": "asse/piles.jpg", "label": "Mental Wellness "},
    {"image": "asse/bone.jpg", "label": "Gynaecology"},
    {"image": "asse/eye.jpg", "label": "General Physician "},
    {"image": "asse/Fissure.jpg", "label": "Dermatology"},
    {"image": "asse/transplant.jpg", "label": "Orthopedic\n"},
    {"image": "asse/kidney.jpg", "label": "Pediatrics\n"},
    {"image": "asse/stones.jpg", "label": "Sexology\n"},
    {"image": "asse /eclip.png", "label": "Back pain\n"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffD9D9D9),
                  backgroundImage: AssetImage(items2[index]['image']!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items2[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
class GeneralPhysician extends StatelessWidget {
  final List<Map<String, String>> items2 = [
    {"image": "asse/piles.jpg", "label": "Mental Wellness "},
    {"image": "asse/bone.jpg", "label": "Gynaecology"},
    {"image": "asse/eye.jpg", "label": "General Physician "},
    {"image": "asse/Fissure.jpg", "label": "Dermatology"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffD9D9D9),
                  backgroundImage: AssetImage(items2[index]['image']!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                items2[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}


