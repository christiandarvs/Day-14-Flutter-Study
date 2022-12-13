import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Account Settings'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                      'https://th.bing.com/th/id/R.800a7dca4dcc86294c6878bf5f6337ae?rik=4nkQdsnlA%2fIWoA&riu=http%3a%2f%2fhdqwalls.com%2fwallpapers%2ffirewatch-game.jpg&ehk=osMk08d5rPmVmv%2ft%2bZfkFScvuLqYzVSGHTAm%2fC9GE8M%3d&risl=&pid=ImgRaw&r=0'),
                  const Positioned(
                    top: 130,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.VSs5aQo8HXIyB31rs8iACAHaEo?pid=ImgDet&rs=1'),
                      radius: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Username: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ChristianDarvs'),
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Email: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('myacc@gmail.com'),
                      ),
                      IconButton(
                          onPressed: (() {}), icon: const Icon(Icons.edit)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (() {}),
                          child:
                              const Text('Enable Two Factor Authentication')),
                      const Icon(
                        Icons.notification_important_outlined,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                        onPressed: (() {}),
                        child: const Text('Change Profile Picture')),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                        onPressed: (() {}),
                        child: const Text('Change Cover Photo')),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                        onPressed: (() {}),
                        child: const Text('Change Password')),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                        onPressed: (() {}),
                        child: const Text(
                          'Delete Account',
                          style: TextStyle(color: Colors.red),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
