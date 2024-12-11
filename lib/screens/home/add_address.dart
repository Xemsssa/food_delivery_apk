import 'package:flutter/material.dart';
import 'package:food_delivery_apk/controllers/auth_controller.dart';
import 'package:food_delivery_apk/controllers/location_controller.dart';
import 'package:food_delivery_apk/screens/Widgets/App_icon.dart';
import 'package:food_delivery_apk/screens/Widgets/app_botton.dart';
import 'package:food_delivery_apk/screens/Widgets/save_button.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../utils/colors.dart';
import 'package:get/get.dart';

import '../Widgets/app_text_field.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {

  TextEditingController _addressController = TextEditingController();
  final TextEditingController _contactPersonPage = TextEditingController();
  final TextEditingController _contactPersonNumber = TextEditingController();

  late bool _isLogged;

  CameraPosition _cameraPosition = CameraPosition(target: LatLng(45.51563, -122.677433),zoom: 17);

  late LatLng _initialPosition = LatLng(45.51563, -122.677433);

  // void initState() {
  //   super.initState();
  //   _isLogged = Get.find<AuthController>().userLoggedIn();
  //   if (_isLogged && Get.find<UserController>().userModel==null){
  //     Get.find<UserContoller>().getUserInfp();
  //   }
  //
  //   if(Get.find<LocationController().addressList.inNotEmpty) {
  //     _cameraPosition = CameraPosition(target: LatLng(
  //       double.parse(Get.find<LocationController>().getAddress['latitude']),
  //         double.parse(Get.find<LocationController>().getAddress['longitude'])
  //     )
  //     );
  //     _initialPosition= LatLng(double.parse(Get.find<LocationController>().getAddress['latitude']),
  //         double.parse(Get.find<LocationController>().getAddress['longitude']));
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.mainColor,
        centerTitle: true,
        title: Text('Add Address',style: TextStyle(
          color: Styles.whiteColor
        ),)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 140,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2, color: Styles.signColor
              )
            ),
            child: Stack(
              children: [
                // GoogleMap(initialCameraPosition: CameraPosition(target: _initialPosition, zoom: 17),
                // zoomControlsEnabled: false,
                // compassEnabled: false,
                // indoorViewEnabled: true,
                // mapToolbarEnabled: false,
                // onCameraIdle: () {},
                // onCameraMove: ((position) => _cameraPosition=position),
                //   onMapCreated: (GoogleMapController controller){
                //   },
                // )
              ],
            ),
          ),

          SizedBox(height: 20,),
          Container(padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                AppBotton(icon: Icons.home,),
                AppBotton(icon: Icons.home,),
                AppBotton(icon: Icons.location_on,),
              ],
            ),
          ),
          // SizedBox(height: 20),
          addressWidget(addressController: _addressController, text1: "Delivery Address", text2: "Address", icon: Icons.email,),

          addressWidget(addressController: _addressController, text1: "Contacts person name", text2: "Ahmed", icon: Icons.person,),
          addressWidget(addressController: _addressController, text1: "Contacts person number", text2: "123", icon: Icons.phone_enabled,),
          SizedBox(height: 40,),

          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SaveButton(text: 'Save Address')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class addressWidget extends StatelessWidget {
  final String text1, text2;
  IconData icon;
  addressWidget({
    super.key,
    required TextEditingController addressController,
    required this.text1, required this.text2,
    required this.icon
  }) : _addressController = addressController;

  final TextEditingController _addressController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10),
          child: Text(text1, style: TextStyle(
            fontSize: 22
        ))),
        AppTextField(hintText: text2 ,icon: icon, color: Styles.yellowColor, textEditingController: _addressController,),
        SizedBox(height: 12,),
      ],
    );
  }
}
