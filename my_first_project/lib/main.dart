import 'package:flutter/material.dart';
import 'package:my_first_project/consts/theme_data.dart';
import 'package:my_first_project/provider/dark_theme_provider.dart';
import 'package:my_first_project/screens/btm_bar.dart';
import 'package:my_first_project/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'consts/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeprovider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeprovider.setDarkTheme =
        await themeChangeprovider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeprovider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Learning flutter',
              theme: Style.themeData(themeProvider.getDarkTheme, context),
              home: BottomBarScreen());
        }
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
      
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
//         title: Text(widget.title),
//       ),
//       body: Center(
       
//         child: Column(
         
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }
