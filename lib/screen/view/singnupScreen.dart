import 'package:flutter/material.dart';
import 'package:login/utils/sharedPrefrence.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Signup",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  label: Text(
                    "Email",
                    style: TextStyle(color: Colors.purple),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 1),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: TextStyle(color: Colors.purple),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.purple),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  var email=txtemail.text;
                  var password=txtpassword.text;
                  Shr shr =Shr();
                  shr.creatShr(email, password);
                  Navigator.pop(context);
                },
                child: Text("Signup"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
