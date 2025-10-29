import 'package:flutter/material.dart';
import 'package:signin_signup_firebase/src/repository/authentication_repository/authentication_repository.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379004.jpg&fm=jpg",
      "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?cs=srgb&dl=pexels-olly-846741.jpg&fm=jpg",
    ];

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Chat Me",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: IconButton(
              onPressed: () {
                AuthenticationRepository.instance.logout();
              },
              icon: const Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://www.shutterstock.com/image-vector/young-smiling-man-avatar-brown-600nw-2261401207.jpg",
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Divider(color: Colors.blue),
            SizedBox(height: size.height * 0.01),
         
          ],
        ),
      ),
    );
  }

  Size get preferredSize => const Size.fromHeight(55);
}
