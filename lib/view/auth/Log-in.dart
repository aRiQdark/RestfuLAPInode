import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:tes_api/view/beranda/tesmain.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 22, 31),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 98, left: 34, right: 34),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Please sign in to your account!",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(
                height: 81,
              ),
              Container(
                height: 60,
                width: 292,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff262A34)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 60,
                width: 292,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff262A34)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff545F71),
                        ),
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xff545F71)),
                ),
              ),
              SizedBox(
                height: 108,
              ),
              InkWell(
                onTap: () => Get.to(MyWidget()),
                child: Container(
                  height: 60,
                  width: 239,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff5468FF)),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 60,
                width: 239,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/Google.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Sign In with Google")
                  ],
                )),
              ),
              SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have Account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
