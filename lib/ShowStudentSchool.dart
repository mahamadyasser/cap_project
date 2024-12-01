import 'package:flutter/material.dart';
import 'package:schoolbus/AddStudent.dart';
import 'package:schoolbus/Forget_Password.dart';
import 'package:schoolbus/HomePageSchool.dart';
import 'package:schoolbus/Home_PageParent.dart';
import 'package:schoolbus/LiveLocation.dart';
import 'package:schoolbus/Signup.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF34D1B2),
          automaticallyImplyLeading: false, // إزالة الأيقونة
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(
                  color: Color(0xFF34D1B2),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            CustomAppBar(), // إضافة CustomAppBar هنا
            SizedBox(height: 0), // إزالة المسافة بين CustomAppBar و Login
            SingleChildScrollView(
              child: Align(
                alignment: Alignment(0.8, -2.0), // تعديل قيمة الـ alignment لتحريك الكلمة لليمين
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Student Profile",
                      style: TextStyle(fontSize: 32), // حجم النص
                    ),
                    SizedBox(height: 1), // مسافة بين النص والخط
                    Container(
                      height: 2, // ارتفاع الخط
                      width: 120, // عرض الخط
                      color: Color(0xFF34D1B2), // لون الخط
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkS8v2vSpIzK2HCPWDdfZP3vbvQhEm5fxuwkNENSNSswbBoWScLb0h3GjVFqgZB9FEpSg&usqp=CAU",height: 100,),
                          SizedBox(height: 20,),
                          Text("Name  : Mohamed Mahmoud  "),
                          Text("Code  : 052207           "),
                          Text("Driver: Mahamed Syes     "),
                          Text("Phone : 01286734563    "),
                          Text("Address : Cairo         "),
                          SizedBox(height: 20,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AddStudent()));
                            },
                            child: Text('Update',style: TextStyle(color:Colors.black),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF34D1B2),
                            ),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HPS()));
                            },
                            child: Text('Delete',style: TextStyle(color:Colors.black),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF34D1B2),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 3, // Adjusted height to make it shorter
        color: Color(0xFF34D1B2),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(size.width / 4, size.height + 40, size.width / 2, size.height - 60);
    path.quadraticBezierTo(size.width * 3 / 4, size.height - 160, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
