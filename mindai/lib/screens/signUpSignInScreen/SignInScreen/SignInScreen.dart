import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mindai/screens/signUpSignInScreen/signUpScreen/SignUpScreen.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(150, 229, 235, 1),
                Color.fromRGBO(150, 145, 246, 1),
                Color.fromRGBO(135, 165, 253, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.4,
                            child: Image.asset(
                              'assets/img/deneme-removebg-preview.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            width: size.width * 0.8,
                            height: size.height * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                    Text(
                                      'GİRİŞ YAP',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: size.width * 0.7,
                                          height: size.height * 0.05,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Kullanıcı Adı Giriniz.',
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          width: size.width * 0.7,
                                          height: size.height * 0.05,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Şifre Giriniz.',
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                    Checkbox(
                                      value: false,
                                      onChanged: (bool? value) {},
                                    ),
                                    Text('Beni Hatırla'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Hesabın Yok Mu?'),
                                    TextButton(
                                      onPressed: () {
                                        Get.off(
                                          Signupscreen(),
                                        );
                                      },
                                      child: Text('Kayıt Ol'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: size.width * 0.3,
                                      height: size.height * 0.05,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromRGBO(150, 229, 235, 1),
                                            Color.fromRGBO(150, 145, 246, 1),
                                            Color.fromRGBO(135, 165, 253, 1),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                        color: Colors.deepPurple,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Giriş Yap',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
