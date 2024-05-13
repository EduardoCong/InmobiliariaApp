import 'package:flutter/material.dart';
import 'package:rive_animation/screens/login/components/sing_in_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color(0xffE9EAF7),
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.53,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Color(0xffD897FD),
                  image: DecorationImage(
                    image: AssetImage(
                      "images/image.png",
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.6,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Discover your\nDream job Here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xff353047),
                          height: 1.2),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Explore all the most exiting jobs roles\nbased on your interest And study major",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff6F6B7A),
                      ),
                    ),
                    SizedBox(height: size.height * 0.07),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffEBEBF2).withOpacity(0.9),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(0, -1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.08,
                                width: size.width / 2.2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xff353047),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignIn(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff353047),
                                  ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}