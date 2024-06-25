// import 'package:first_app/shared/components/components.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//   bool isPassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Form(
//               key: formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Login',
//                     style: TextStyle(
//                       fontSize: 40.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 40.0,
//                   ),
//                   defaultFormField(
//                       controller: emailController,
//                       type: TextInputType.text,
//                       label: "Email",
//                       prefix: Icons.email,
//                     validator: (value)
//                     {
//                       if(value.isEmpty)
//                       {
//                         return 'Email must n\'t be empty';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   defaultFormField(
//                     controller: passwordController,
//                     type: TextInputType.visiblePassword,
//                     label: "Password",
//                     isPassword: isPassword,
//                     prefix: Icons.lock,
//                     suffix: isPassword ? Icons.visibility_off : Icons.visibility ,
//                     suffixPressed: ()
//                     {
//                       setState(()
//                       {
//                         isPassword = !isPassword;
//                       });
//                     },
//                     validator: (value)
//                     {
//                       if(value.isEmpty)
//                       {
//                         return 'password is too short';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   Container(
//                     width: double.infinity,
//                     color: Colors.blue,
//                     height: 40.0,
//                     child: MaterialButton(
//                       onPressed: () {
//                         if (formKey.currentState!.validate()) {
//                           print(emailController.text);
//                           print(passwordController.text);
//                         }
//                         ;
//                       },
//                       child: Text(
//                         'LOGIN',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Container(
//                     width: double.infinity,
//                     color: Colors.blue,
//                     height: 40.0,
//                     child: MaterialButton(
//                       onPressed: () {
//                         if (formKey.currentState!.validate()) {
//                           print(emailController.text);
//                           print(passwordController.text);
//                         }
//                       },
//                       child: Text(
//                         'REGISTER',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Don\'t have an account?'),
//                       TextButton(
//                         onPressed: () {
//                           print("hello Samir");
//                         },
//                         child: Text('Register Now'),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
