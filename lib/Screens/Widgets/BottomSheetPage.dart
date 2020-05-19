import 'package:divyanshucompany/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.white,
//                borderRadius: BorderRadius.only(
//                  topRight: Radius.circular(20),
//                  topLeft: Radius.circular(20),
//                ),
          ),
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Message',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  minLines: 1,
                  validator: (value) {
                    if (!(value is String)) {
                      return "Enter A Valid EmailAddress";
                    }
                    return null;
                  },
                  onSaved: (value) {
//                  return model.addDescription(value);
                  },
                  decoration: textInputDecoration.copyWith(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    suffixIcon: Icon(Icons.mail_outline),
//                  alignLabelWithHint: true,
                    labelText: 'Email',
                  ),
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  minLines: 4,
                  validator: (value) {
                    if (!(value is String)) {
                      return "Enter Some Text";
                    }
                    return null;
                  },
                  onSaved: (value) {
//                  return model.addDescription(value);
                  },
                  decoration: textInputDecoration.copyWith(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    suffixIcon: Icon(Icons.message),
//                  alignLabelWithHint: true,
                    labelText: 'Message',
                  ),
                  maxLines: 4,
                  keyboardType: TextInputType.text,
                  enabled: true,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Send'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
