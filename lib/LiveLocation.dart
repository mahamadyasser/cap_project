import 'package:flutter/material.dart';
import 'package:schoolbus/Forget_Password.dart';
import 'package:schoolbus/Home_PageParent.dart';
import 'package:schoolbus/Signup.dart';

class LiveLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS75Yxt6jUEOZ4ipOUq1YFZJywFQUJUl44uE-XR-8xTl6CP_ViZZdENFcts52oViKc4wY&usqp=CAU",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
    );
  }
}
