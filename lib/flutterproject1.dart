import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.grey),
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: const HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('My App Bar---', style: TextStyle(color: Colors.black)),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.9,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                MySnackbar('I am search', context);
              },
              icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {
                MySnackbar('I am email', context);
              },
              icon: const Icon(Icons.email, color: Colors.white)),
          IconButton(
              onPressed: () {
                MySnackbar('I am settings', context);
              },
              icon: const Icon(Icons.settings, color: Colors.white)),
          IconButton(
              onPressed: () {
                MySnackbar('I am comment', context);
              },
              icon: const Icon(Icons.comment, color: Colors.white))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: const Center(
          child: Text(
            'Hello Dear ❤❤\n '
            'acclaimed, retail, Although, somewhat, throughout, '
            'the propagation, risk, potential, disaster, sake, inherently, '
            'However, definitely, consideration, warrant',
            maxLines: 4,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
              letterSpacing: 1,
              wordSpacing: 1,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackbar('I am floating Action Button', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.black), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black), label: 'Profile')
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackbar('I am Home Bottom menu', context);
          }
          if (index == 1) {
            MySnackbar('I am Message Bottom menu', context);
          }
          if (index == 2) {
            MySnackbar('I am Profile Bottom menu', context);
          }
        },
      ),
      drawer: Drawer(
        backgroundColor: Color(0xffb9ecc7),
        child: Column(
          children: [
            SizedBox(height: 50),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/sujon.jpg'),
            ),
            ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.black),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () {
                  MySnackbar("I am drawer home menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                title: Text('Profile'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.contact_mail, color: Colors.black),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                title: Text('Contact'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.email, color: Colors.black),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                title: Text('Email'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.phone, color: Colors.black),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                title: Text('Phone'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName:
                      Text('Ms Suzon', style: TextStyle(color: Colors.black)),
                  accountEmail: Text('msrsujon12@gmail.com',
                      style: TextStyle(color: Colors.black)),
                  currentAccountPicture: Image.network(
                      'https://avatars.githubusercontent.com/u/125904553?'),
                )),
            ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Home'),
                onTap: () {
                  MySnackbar("I am drawer home menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Profile'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.contact_mail, color: Colors.black),
                title: Text('Contact'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.email, color: Colors.black),
                title: Text('Email'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
            ListTile(
                leading: Icon(Icons.phone, color: Colors.black),
                title: Text('Phone'),
                onTap: () {
                  MySnackbar("I am drawer menu bar", context);
                }),
          ],
        ),
      ),
    );
  }
}
