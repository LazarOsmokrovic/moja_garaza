import 'package:flutter/material.dart';
import '../widgets/car_item.dart';
import '../user_data.dart';

class GarageScreen extends StatefulWidget {
  static const routeName = '/garage-screen';

  @override
  _GarageScreenState createState() => _GarageScreenState();
}

class _GarageScreenState extends State<GarageScreen> {
  bool isSearching = false;

  List filteredCars = [];

  @override
  void initState() {
    super.initState();
    filteredCars = CarsData.where((car) => car.driver.toLowerCase()
        .contains(UserData[0].id)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute
      .of(context)
      .settings
       .arguments as Map<String, String>;
    final driverId = routeArguments['id'];

    final cars = CarsData.where((car) {
      return car.driver.contains(driverId);
    }).toList();

    void _filterCars(text) {
      text = text.toLowerCase();
      setState(() {
        filteredCars = cars.where((car) {
          var carModel = car.model.toLowerCase().contains(text);
          var carColor = car.color.toLowerCase().contains(text);
          return carColor || carModel;
        }).toList();
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(107,144, 128, 1),
        title: !isSearching ? Text('My Garage', style:
          TextStyle(
            fontFamily: 'Double-Seat',
            fontSize: 30,
          ),
        ) : TextField(
          onChanged: (text) {
            _filterCars(text);
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            icon: const Icon(Icons.search, color: Colors.white, size: 30,)
          ),
        ),
        elevation: 0,
        actions: [
          isSearching ?  IconButton(
            padding: const EdgeInsets.only(right: 20,),
            icon: const Icon(Icons.cancel_outlined, size: 30,),
            onPressed: (){
              setState((){
                this.isSearching = !this.isSearching;
                filteredCars = cars;
              });
            }
          ) : IconButton(
              padding: const EdgeInsets.only(right: 20,),
              icon: Icon(Icons.search, size: 30,),
              onPressed: (){
                setState((){
                  this.isSearching = !this.isSearching;
                });
              }
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return CarItem(
            brand: filteredCars[index].brand,
            model: filteredCars[index].model,
            licensePlate: filteredCars[index].licensePlate,
            color: filteredCars[index].color,
          );
        },
        itemCount: filteredCars.length ,
      ),
    );
  }
}