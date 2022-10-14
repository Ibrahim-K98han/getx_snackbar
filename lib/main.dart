import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      home: Scaffold(
        appBar: AppBar(title: Text('Snackbar'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar('BUBT',
                        'Bangladesh University of Business and Technology',
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.blue,
                    //backgroundColor: Colors.blue,
                    borderRadius: 30,
                    margin: EdgeInsets.all(10),
                    borderColor: Colors.blue,
                      borderWidth: 1,
                      isDismissible: true,
                      forwardAnimationCurve: Curves.bounceInOut,
                      duration: Duration(milliseconds: 5000),
                      icon: Icon(
                        Icons.send,
                        color: Colors.blue,
                      )
                    );
                  },
                  child: Text('Show Snackbar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

