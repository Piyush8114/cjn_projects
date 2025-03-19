import 'dart:convert';
import 'package:c_j_n_prg/screen/Home_Page.dart';
import 'package:c_j_n_prg/custom%20field/dropdown_Field.dart';
import 'package:c_j_n_prg/screen/Register_Page.dart';
import 'package:flutter/material.dart';
import '../custom field/customTextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  void _login() async {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOa5uJAwadJw_5SpmV07Yv8tCqMi2ZagiIag&s"),

                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      DropdownExample(),

                      CustomTextField(
                        controller: _usernameController,
                        label: 'Username',
                        icon: Icons.person,
                      ),
                      CustomTextField(
                        controller: _passwordController,
                        label: 'Password',
                        icon: Icons.lock,
                        isPassword: true,
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: (){
                            // _forgetpassword();
                          }, child: Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.red),),),
                      ),

                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _login,
                          style: _buttonStyle(foreground: Colors.white),
                          child: const Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                        ),
                      ),

                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          TextButton(onPressed: (){
                            // _register();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));

                          }, child: Text("Register"))

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle({bool isOutlined = false,required Color foreground}) {
    return ElevatedButton.styleFrom(
      backgroundColor: isOutlined ? Colors.transparent : Colors.green,
      foregroundColor: foreground,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isOutlined ? const BorderSide(color: Colors.blueGrey) : BorderSide.none,
      ),
    );
  }
}

