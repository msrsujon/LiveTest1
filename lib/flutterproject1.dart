
import 'package:flutter/material.dart';


main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green ),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: HomeActivity()

    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackbar(message, context){
     return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
      );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('My App Bar---'),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: ( ){MySnackbar('I am search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: ( ){MySnackbar('I am email', context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: ( ){MySnackbar('I am settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: ( ){MySnackbar('I am comment', context);}, icon: Icon(Icons.comment))
        ],
      ),
      body: Text('Hello dear'),

      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: (){
          MySnackbar('I am floating Action Button', context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label:'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile')
          ] ,
        onTap: (int index){
          if(index==0){
            MySnackbar('I am Home Bottom menu', context);
          }
          if(index==1){
            MySnackbar('I am Message Bottom menu', context);
          }
          if(index==2){
            MySnackbar('I am Profile Bottom menu', context);
          }
        },


      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('suzon')),
            ListTile(title: Text('Home')),
            ListTile(title: Text('Contact')),
            ListTile(title: Text('Profile')),
            ListTile(title: Text('Email')),
            ListTile(title: Text('Phone')),
          ],
        ),
      ),

    );
  }
}