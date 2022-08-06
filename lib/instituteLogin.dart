import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class InstituteLogin extends StatefulWidget {
  InstituteLogin({Key? key}) : super(key: key);

  @override
  State<InstituteLogin> createState() => _InstituteLoginState();
}

class _InstituteLoginState extends State<InstituteLogin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _instController = TextEditingController();
    TextEditingController _pwdController = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 9, 82),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const Text(
                  'Government Asset Management',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '(DoSEL)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'assets/logo.jpg',
                  height: 300,
                  width: 150,
                ),
                const Text(
                  'Institute Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _instController,
                          decoration: InputDecoration(
                              icon: Icon(Icons.school),
                              border: InputBorder.none,
                              hintText: "Enter Institute Code",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _pwdController,
                          decoration: InputDecoration(
                              icon: Icon(Icons.password),
                              border: InputBorder.none,
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: AnimatedButton(
                    height: 60,
                    width: 150,
                    text: 'Login',
                    isReverse: true,
                    selectedTextColor: Color.fromARGB(255, 2, 9, 82),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(colors: [
                      Colors.white,
                      Colors.white,
                    ]),
                    borderRadius: 28,
                    borderColor: Colors.white,
                    borderWidth: 2,
                    onPress: () async {
                      //implement validation
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
