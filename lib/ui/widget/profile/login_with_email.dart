import 'package:flutter/material.dart';
import 'package:shoping2/utils/color.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {

  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.textBlack),
        elevation: 0,
        backgroundColor: AppColor.grey.withOpacity(0.3),
        title: const Text('Login',style: TextStyle(color: Colors.black,fontSize: 16),),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20,bottom: 10),
                  child: SizedBox(
                    height: 20,
                    child: Text('Log in to your account',
                    style: TextStyle(fontSize: 15,color: AppColor.textBlack,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your valid email ";
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20,),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.grey,
                          )),
                    ),

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      } else {
                        return null;
                      }
                    },

                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10,top: 15,bottom:20),
                  child: SizedBox(height: 20,
                  child: Text('Forgot Password ?',style: TextStyle(color: Colors.teal,fontSize: 15),),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {

                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
