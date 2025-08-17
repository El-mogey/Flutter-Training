import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 94),
        children: <Widget>[
          Text(
            "Create an account",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text(
            "Let's help you set up your account, it won't take long",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 57),
          Text(
            "Name",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),

          SizedBox(height: 5),

          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Name",
              hintStyle: TextStyle(
                color: Color(0xffD9D9D9),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffD9D9D9)),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Email",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),

          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Email",
              hintStyle: TextStyle(
                color: Color(0xffD9D9D9),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffD9D9D9)),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Password",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),

          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Password",
              hintStyle: TextStyle(
                color: Color(0xffD9D9D9),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffD9D9D9)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Confirm Password",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),

          TextFormField(
            decoration: InputDecoration(
              hintText: "Confirm Password",
              hintStyle: TextStyle(
                color: Color(0xffD9D9D9),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffD9D9D9)),
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: Color(0xffFF9C00),
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = value!;
                  });
                },
              ),
              Text(
                "Accept Terms & Conditions",
                style: TextStyle(color: Color(0xffFF9C00)),
              ),
            ],
          ),
          SizedBox(
            height: 64,

            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  Color(0xff129575),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign Up", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 50),
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Or Sign in With",
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xffD9D9D9),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Expanded(child: Divider()),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/google.png"),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/facebook.png"),
              ),
            ],
          ),
          SizedBox(height: 55),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already a Member?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                "Sign in",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xffFF9C00),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
