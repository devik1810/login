import 'package:flutter/material.dart';
import 'package:login/utils/sharedPrefrence.dart';

class LodinScreen extends StatefulWidget {
  const LodinScreen({Key? key}) : super(key: key);

  @override
  State<LodinScreen> createState() => _LodinScreenState();
}

class _LodinScreenState extends State<LodinScreen> {
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
            "Login",
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
                onPressed: () async {
                  String userEmail = txtemail.text;
                  String userPassword = txtpassword.text;

                  Shr shr = Shr();
                  Map m1 = await shr.readShr();

                  if (userEmail == m1['e1'] && userPassword == m1['p1']) {
                    Navigator.pushNamed(context, 'home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Id or Password")));
                  }
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'sing');
                  },
                  child: Text(
                    "Don't have an account? Sign up.",
                    style: TextStyle(color: Colors.purple),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
