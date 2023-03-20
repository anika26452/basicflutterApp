import 'package:basic_ui_withflutter/core/appcolors.dart';
import 'package:basic_ui_withflutter/src/Modules/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

enum SingingCharacter { Male, Female, Custome }

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  var desigval, monthval, yearval, proval;

  List prolist = ['She', 'He', 'They'];
  List datelist = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16'
  ];
  List monthlist = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  List yearlist = ['1990', '1991', '1992', '1993', '1994', '1995'];

  SingingCharacter? _character = SingingCharacter.Male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(children: [
        Center(child: Text("It's easy and quick")),
        SizedBox(
          height: 20,
        ),
        Form(
            key: _formKey,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        // controller: name,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.8, color: Colors.grey),
                            ),
                            labelText: "First Name",
                            labelStyle: TextStyle(fontSize: 10)),
                        style: TextStyle(fontSize: 10),
                        validator: (value) {
                          if (value == null || value.length == 0) {
                            return ("Name is required");
                          }
                        },
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        // controller: name,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.8, color: Colors.grey),
                            ),
                            labelText: "Second Name",
                            labelStyle: TextStyle(fontSize: 10)),
                        style: TextStyle(fontSize: 10),
                        validator: (value) {
                          if (value == null || value.length == 0) {
                            return ("Name is required");
                          }
                        },
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        // controller: name,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.8, color: Colors.grey),
                            ),
                            labelText: "Mobile No or Email Address",
                            labelStyle: TextStyle(fontSize: 10)),
                        style: TextStyle(fontSize: 10),
                        validator: (value) {
                          if (value == null || value.length == 0) {
                            return ("This field is required");
                          }
                        },
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        // controller: name,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.8, color: Colors.grey),
                            ),
                            labelText: "New Password",
                            labelStyle: TextStyle(fontSize: 10)),
                        style: TextStyle(fontSize: 10),
                        validator: (value) {
                          if (value == null || value.length == 0) {
                            return ("Name is required");
                          }
                        },
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Date Of Birth "),
                          Icon(
                            Icons.question_mark_outlined,
                            size: 15,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 110,
                            child: DropdownButton(
                              style: Theme.of(context).textTheme.bodySmall,
                              isExpanded: true,
                              value: desigval,
                              onChanged: (value) {
                                setState(() {
                                  desigval = value;
                                });
                              },
                              items: datelist.map((valueitem) {
                                return DropdownMenuItem(
                                    value: valueitem, child: Text(valueitem));
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 110,
                            child: DropdownButton(
                              style: Theme.of(context).textTheme.bodySmall,
                              isExpanded: true,
                              value: monthval,
                              onChanged: (value) {
                                setState(() {
                                  monthval = value;
                                });
                              },
                              items: monthlist.map((valueitem) {
                                return DropdownMenuItem(
                                    value: valueitem, child: Text(valueitem));
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 110,
                            child: DropdownButton(
                              style: Theme.of(context).textTheme.bodySmall,
                              isExpanded: true,
                              value: yearval,
                              onChanged: (value) {
                                setState(() {
                                  yearval = value;
                                });
                              },
                              items: yearlist.map((valueitem) {
                                return DropdownMenuItem(
                                    value: valueitem, child: Text(valueitem));
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Gender"),
                          Icon(
                            Icons.question_mark_outlined,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          RadioListTile<SingingCharacter>(
                            title: const Text('Male'),
                            value: SingingCharacter.Male,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          RadioListTile<SingingCharacter>(
                            title: const Text('Female'),
                            value: SingingCharacter.Female,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          RadioListTile<SingingCharacter>(
                            title: const Text('Custom'),
                            value: SingingCharacter.Custome,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Select your pronoun"),
                      DropdownButton(
                        style: Theme.of(context).textTheme.bodySmall,
                        isExpanded: true,
                        value: proval,
                        onChanged: (value) {
                          setState(() {
                            proval = value;
                          });
                        },
                        items: prolist.map((valueitem) {
                          return DropdownMenuItem(
                              value: valueitem, child: Text(valueitem));
                        }).toList(),
                      ),
                      Center(
                          child: ElevatedButton(
                        onPressed: () {
                          Get.snackbar("Successful", "Signed Up",
                              snackPosition: SnackPosition.TOP,
                              colorText: AppColor.appcolor,
                              backgroundColor: Colors.grey);
                          Get.to(LoginScreeen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 8),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 4,
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                    ])))
      ]),
    );
  }
}
