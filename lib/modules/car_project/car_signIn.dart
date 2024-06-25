import 'package:first_app/modules/car_project/car_signUp.dart';
import 'package:flutter/material.dart';
import 'final_Screen.dart';

class SignIn extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var isPassword = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Image(
                  image: NetworkImage(
                      'https://1000logos.net/wp-content/uploads/2022/04/BMW-M-Logo.jpg'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: 350.0,
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 350.0,
                  child: TextFormField(
                    controller: password,
                    obscureText: isPassword,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock_outline_sharp,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 350.0,
                  height: 50.0,
                  child: MaterialButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Final(
                              email: email.text,
                              password: password.text,
                              name: '',
                              phone: '',
                            ),
                          ),
                        );
                      }
                      ;
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.extended(
                      label: Text('Facebook'), // <-- Text
                      backgroundColor: Colors.black,
                      icon: Icon(
                        Icons.facebook,
                        size: 24.0,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    FloatingActionButton.extended(
                      label: Text('Google'), // <-- Text
                      backgroundColor: Colors.black,
                      icon: Icon(
                        Icons.g_mobiledata,
                        size: 35.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
