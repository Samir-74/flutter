import 'package:first_app/models/user/user_model.dart';
import 'package:flutter/material.dart';


class UsersScreen extends StatefulWidget {

  UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Samir',
      phone: '01210175856',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '01220175856',
    ),
    UserModel(
      id: 3,
      name: 'samy',
      phone: '012940175856',
    ),
    UserModel(
      id: 1,
      name: 'Samir',
      phone: '01210175856',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '01220175856',
    ),
    UserModel(
      id: 3,
      name: 'samy',
      phone: '012940175856',
    ),
    UserModel(
      id: 1,
      name: 'Samir',
      phone: '01210175856',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '01220175856',
    ),
    UserModel(
      id: 3,
      name: 'samy',
      phone: '012940175856',
    ),
    UserModel(
      id: 1,
      name: 'Samir',
      phone: '01210175856',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '01220175856',
    ),
    UserModel(
      id: 3,
      name: 'samy',
      phone: '012940175856',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUersItem(users[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: users.length),
    );
  }

  Widget buildUersItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
