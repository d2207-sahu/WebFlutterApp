import 'package:divyanshucompany/Constants/constants.dart';
import 'package:divyanshucompany/Model/JoinUsInitialModel.dart';
import 'package:divyanshucompany/Utils/Validators.dart';
import 'package:divyanshucompany/ViewModel/JoinUsProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JoinUsPage extends StatefulWidget {
  @override
  _JoinUsPageState createState() => _JoinUsPageState();
}

class _JoinUsPageState extends State<JoinUsPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _mobileNumberController;
  String _name, _email, _phone;
  bool _autoValidate = false;

  JoinUsModel addtoFirebase() {
    if (_formKey.currentState.validate() == true) {
      _formKey.currentState.save();
      var data = JoinUsModel(_email, _phone, _name);
      return data;
    } else {
      _autoValidate = false;
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<JoinUsProvider>(
      create: (context) => JoinUsProvider(),
      builder: (context, child) {
        return child;
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(),
          child: SafeArea(
            child: Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LessSpace(),
                    LessSpace(),
                    LessSpace(),
                    Center(
                      child: Text(
                        "We're are Hiring",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    LessSpace(),
                    Text(
                      "Fill the Form",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: TextFormField(
                                  minLines: 1,
                                  controller: _emailController,
                                  validator: validateEmail,
                                  onSaved: (value) {
                                    return _email = value;
                                  },
                                  decoration: textInputDecoration.copyWith(
                                      border: OutlineInputBorder(),
                                      suffixIcon: Icon(
                                        Icons.mail_outline,
                                        color: Colors.black,
                                      ),
                                      alignLabelWithHint: true,
                                      hintText: 'Email '),
                                  maxLines: 1,
                                  keyboardType: TextInputType.emailAddress,
                                  enabled: true,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: TextFormField(
                                  minLines: 1,
                                  controller: _mobileNumberController,
                                  validator: validateMobileNumber,
                                  onSaved: (value) {
                                    return _phone = value;
                                  },
                                  decoration: textInputDecoration.copyWith(
                                      border: OutlineInputBorder(
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(0),
//                    ),
                                          ),
                                      suffixIcon: Icon(
                                        Icons.phone,
                                        color: Colors.black,
                                      ),
                                      alignLabelWithHint: true,
                                      hintText: 'Mobile Number'),
                                  maxLines: 1,
                                  keyboardType: TextInputType.phone,
                                  enabled: true,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: TextFormField(
                                  minLines: 1,
                                  validator: validateName,
                                  onSaved: (value) {
                                    return _name = value;
                                  },
                                  decoration: textInputDecoration.copyWith(
                                      border: OutlineInputBorder(
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(0),
//                    ),
                                          ),
                                      suffixIcon: Icon(
                                        Icons.perm_identity,
                                        color: Colors.black,
                                      ),
                                      alignLabelWithHint: true,
                                      hintText: 'Name'),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                  enabled: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    LessSpace(),
                    Consumer(
                      builder: (context, model, child) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            color: Colors.white,
                            padding: null,
                            onPressed: () async {
                              var data = addtoFirebase();
                              if (data != null) {
                                // _navigator.goTo(homeRoute);
                              }
                            },
                            child: Center(
                              child: Text(
                                'Send',
                                style: GoogleFonts.baloo(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
