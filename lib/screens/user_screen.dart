import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/logo.dart';
import '../widgets/user_item.dart';
import '../user_data.dart';

class UserScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.2, 0.4, 0.6, 0.7, 1],
            colors: [
              Color.fromRGBO(107,144, 128, 1),
              Color.fromRGBO(164, 195, 178, 1),
              Color.fromRGBO(204, 227, 222, 1),
              Color.fromRGBO(234, 244, 244, 1),
              Color.fromRGBO(246, 255, 248, 1),
            ],
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            Center(
              child: Container(
                height: 550,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return UserItem(
                      id: UserData[index].id,
                      name: UserData[index].name,
                      image: UserData[index].image,
                      lastName: UserData[index].lastName,
                      address: UserData[index].address,
                      garageAddress: UserData[index].garageAddress,
                    );
                  },
                  itemCount: UserData.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

