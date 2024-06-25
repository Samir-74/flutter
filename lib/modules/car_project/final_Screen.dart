import 'package:flutter/material.dart';

class Final extends StatelessWidget {
final name ;
final phone;
final email;
final password;

Final(
{
 this.name,
 this.phone,
required this.email,
required this.password,

});



@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Center(
        child: const Text(
          'BMW',
        ),
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text('Welcome',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
            Text('In our Family',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                ' ${name}',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Check Your Information :',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Phone :  ${phone}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Email : ${email}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'password : ${password}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: NetworkImage('https://media.tenor.com/unVXENaTkFIAAAAM/euro-motors-rio-preto.gif'),
                width: 500.0,
                height: 400.0,),
              ],
              
            ),
          ],
        ),
      ),
    ),
  );
}
}
