import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/src/constants/constraints.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 320,
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _googleSignIn(context),
              _login(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Sign Up",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Create Your Account"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: PrimaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: SmallGap),
        TextField(
          decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: PrimaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: SmallGap),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: PrimaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: SmallGap),
        TextField(
          decoration: InputDecoration(
            hintText: "Confirm Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: PrimaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: midGap),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: SmallGap),
            backgroundColor: PrimaryColor,
          ),
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
      ],
    );
  }

  _googleSignIn(context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Sign in With Google",
        style: TextStyle(color: PrimaryColor),
      ),
    );
  }

  _login(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account? "),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const Text(
              "Log In",
              style: TextStyle(color: PrimaryColor),
            ))
      ],
    );
  }
}
