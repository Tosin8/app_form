import 'package:app_form/widgets/constant.dart';
import 'package:flutter/material.dart';

import 'signup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img/bkg.png',
                  ),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200.0),
            child: Column(
              children: [
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 220),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[500]?.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Icon(Icons.account_circle,
                              size: 28, color: kWhite),
                        ),
                        hintText: 'Username',
                        hintStyle: kBodyText,
                      ),
                      // obscureText: true,
                      style: kBodyText,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[500]?.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Icon(Icons.lock, size: 28, color: kWhite),
                        ),
                        hintText: 'Password',
                        hintStyle: kBodyText,
                      ),
                      obscureText: true,
                      style: kBodyText,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: kWhite, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 60,
                    width: 240,
                    child: const Center(
                      child: Text(
                        'LOG ME IN',
                        style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Row(
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: kWhite, fontSize: 15),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sign_Up()));
                        },
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 15, color: green),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
