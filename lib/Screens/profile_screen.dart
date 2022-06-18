import 'package:flutter/material.dart';
import 'package:tfriends/Widget/custom_text_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailidTextController = TextEditingController();
  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 65,
          title: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Image.asset(
              'images/tfrnds_white_logo.png',
              height: 48,
              width: 141,
            ),
          ),
        ),
        backgroundColor: Color(0xffECECEC),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Welcome User',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 46, 139, 215),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'images/userprofile.png',
                  height: 90,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFieldWidget(
                      labeltext: 'Full Name',
                      icon: Icons.person,
                      
                      textEditingController: emailidTextController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomTextFieldWidget(
                      labeltext: 'Email Id',
                      icon: Icons.mail,
                      
                      textEditingController: emailidTextController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFieldWidget(
                      labeltext: 'Mobile Number',
                      icon: Icons.phone_outlined,
                      //color: Color.fromARGB(255, 132, 130, 130),
                      textEditingController: emailidTextController),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 94, 91, 91)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            child: Center(
                              child: Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            child: Center(
                              child: Text(
                                'Female',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 104, 101, 101))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Date of Birth',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 94, 91, 91)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: dateinput,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 7,
                          ),
                          Icon(Icons.calendar_today),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 25,
                            width: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      labelText: 'Date of Birth',
                      //label text of field
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2050));
                      if (pickedDate != null) {
                        dateinput.text = pickedDate.toString();
                      }
                    },
                  ),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    width: 363,
                    height: 40,
                    child: Center(
                        child: Text(
                      'Updated Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Quick Links',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Container(
                          child: Center(
                            child: Icon(
                              Icons.video_camera_front,
                              size: 55,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Container(
                          child: Center(
                            child: Icon(
                              Icons.lock,
                              size: 50,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Container(
                          child: Center(
                            child: Icon(
                              Icons.logout,
                              size: 50,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
