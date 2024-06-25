import 'package:flutter/material.dart';
import 'car_signIn.dart';
import 'car_signUp.dart';

class Cars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: NetworkImage('https://i.makeagif.com/media/11-27-2015/naHhQI.gif'),
              fit: BoxFit.contain,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WELCOME',
                          style: TextStyle(
                            color: Color.fromRGBO(232, 249, 253, 1),
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'In BMW World',
                          style: TextStyle(
                            color:Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 550.0,
                ),
                Container(
                  height: 50.0,
                  width: 250.0,
                  child: MaterialButton(onPressed: ()
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn())
                    );
                  },
                    child:
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration:
                  BoxDecoration(borderRadius:
                  BorderRadius.circular(50.0),
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 250.0,
                  height: 50.0,
                  child: MaterialButton(onPressed: ()
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp())
                    );
                  },
                    child:
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration:
                  BoxDecoration(borderRadius:
                  BorderRadius.circular(50.0),
                  color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
