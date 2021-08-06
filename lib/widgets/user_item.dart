import 'package:flutter/material.dart';
import 'package:moja_garaza/widgets/text_title.dart';
import '../screens/garage_screen.dart';

class UserItem extends StatelessWidget {
  final String id;
  final String name;
  final String lastName;
  final String image;
  final String address;
  final String garageAddress;

  const UserItem({
    this.id,
    this.name,
    this.lastName,
    this.image,
    this.address,
    this.garageAddress,
  });

  @override
  Widget build(BuildContext context) {

    void openGarage(BuildContext context) {
      Navigator.of(context).pushNamed(
        GarageScreen.routeName,
        arguments: {'id': id},
      );
    }
    return Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 500,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white70,
              ],
              stops: [0.7, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(246, 255, 248, 1).withOpacity(0.4),
                spreadRadius: 6,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(107,144, 128, 1),
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromRGBO(107,144, 128, 1),
                      width: 6,
                  ),
                ),
                child: CircleAvatar(
                  foregroundImage: AssetImage(image),
                ),
              ),
              const TextTitle('Full Name',),
              SizedBox(height: 10,),
              Text('$name $lastName'),
              SizedBox(height: 25,),
              const TextTitle('Address',),
              SizedBox(height: 10,),
              Text('$address'),
              SizedBox(height: 25,),
              const TextTitle('Garage address',),
              SizedBox(height: 10,),
              Text('$garageAddress'),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () => openGarage(context),
                child: Text('Open Garage'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
                  backgroundColor: MaterialStateColor.resolveWith((states) =>
                      Color.fromRGBO(107,144, 128, 1),
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
    );
  }
}
