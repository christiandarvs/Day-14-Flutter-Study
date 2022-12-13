import 'package:day_fourteen_study/account.dart';
import 'package:day_fourteen_study/under_construction.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('ChristianDarvs'),
              accountEmail: Text('myacc@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.VSs5aQo8HXIyB31rs8iACAHaEo?pid=ImgDet&rs=1')),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.800a7dca4dcc86294c6878bf5f6337ae?rik=4nkQdsnlA%2fIWoA&riu=http%3a%2f%2fhdqwalls.com%2fwallpapers%2ffirewatch-game.jpg&ehk=osMk08d5rPmVmv%2ft%2bZfkFScvuLqYzVSGHTAm%2fC9GE8M%3d&risl=&pid=ImgRaw&r=0'),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: const Text(
                'Account Settings',
              ),
              leading: const Icon(
                Icons.person,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const AccountSettings();
                })));
              },
            ),
            ListTile(
              title: const Text(
                'Bookmarks',
              ),
              leading: const Icon(
                Icons.bookmark_outline,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const UnderConstruction();
                })));
              },
            ),
            ListTile(
              title: const Text(
                'Favorites',
              ),
              leading: const Icon(
                Icons.favorite_border_outlined,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const UnderConstruction();
                })));
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text(
                'Cart',
              ),
              leading: const Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const UnderConstruction();
                })));
              },
            ),
            ListTile(
              title: const Text(
                'Coupons & Promos',
              ),
              leading: const Icon(
                Icons.card_giftcard_outlined,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const UnderConstruction();
                })));
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text(
                'Send Feedback',
              ),
              leading: const Icon(
                Icons.messenger_outline_sharp,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const UnderConstruction();
                })));
              },
            ),
            ListTile(
              title: const Text(
                'Close Drawer',
              ),
              leading: const Icon(
                Icons.close,
                size: 25,
              ),
              onTap: () {
                Scaffold.of(context).closeDrawer();
              },
            ),
          ],
        ),
      ),
    );
  }
}
