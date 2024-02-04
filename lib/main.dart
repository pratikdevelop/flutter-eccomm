import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,  
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'SHOPPSY ECCOMMERCE APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    // Call your initial function here
    myInitialFunction();
  }

  // Your initial function
  void myInitialFunction() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    print(response.body);
    // Add your code here
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // Set the preferred height of the AppBar
          child: Container(
            margin: EdgeInsets.all(8.0), // Adjust the margin as needed
            child:AppBar(
        backgroundColor: const Color(0xFFFFFF),
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(color: Colors.black, width: 1.0),
          top: BorderSide(color: Colors.black, width: 1.0),
          left: BorderSide(color: Colors.black, width: 1.0),
          right: BorderSide(color: Colors.black, width: 1.0),
        ),
        title: Text(widget.title,  style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.login,
              size: 20.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 20.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              size: 20.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.logout,
              size: 20.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 20.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      ),),
    );
  }
}
