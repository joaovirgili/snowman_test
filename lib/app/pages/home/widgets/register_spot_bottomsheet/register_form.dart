import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UploadPhoto(),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Name",
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Categories",
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(FontAwesomeIcons.mapMarkerAlt,
                              color: MAIN_BLUE),
                          border: OutlineInputBorder(),
                          labelText: "Location",
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(FontAwesomeIcons.solidCircle,
                              color: Colors.red),
                          border: OutlineInputBorder(),
                          labelText: "Pin Color",
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              onPressed: () => {},
                              color: Color(0xffffbe00),
                              child: Text(
                                "Add Spot",
                                style: TextStyle(
                                    color: MAIN_BLUE,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UploadPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: MAIN_GREY,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            Icons.photo_camera,
            color: MAIN_BLUE,
            size: 35,
          ),
          onPressed: () => {},
        ),
      ),
    );
  }
}
