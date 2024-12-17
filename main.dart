import 'package:flutter/material.dart';
import 'package:jits/screens/splash_screen.dart';
import 'package:jits/screens/home_screen.dart';
import 'package:jits/screens/about_us_screen.dart';
import 'package:jits/screens/academics_screen.dart';
import 'package:jits/screens/facilities_screen.dart';
import 'package:jits/screens/news_events_screen.dart';
import 'package:jits/screens/placements_screen.dart';
import 'package:jits/screens/student_corner_screen.dart';
import 'package:jits/screens/grievance_screen.dart';
import 'package:jits/screens/contact_us_screen.dart';
import 'package:jits/screens/campus_screen.dart';
import 'package:jits/screens/department_screen.dart';
import 'package:jits/screens/department_detail_screen.dart';  // Import the new department detail screen
import 'package:jits/screens/about_us_vision_mission_screen.dart';  // Import the renamed vision & mission screen
import 'package:jits/screens/principal_screen.dart';
import 'package:jits/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jyothishmathi Institute',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/about_us': (context) => AboutUsScreen(),
        '/academics': (context) => AcademicsScreen(),
        '/facilities': (context) => FacilitiesScreen(),
        '/news_events': (context) => NewsEventsScreen(),
        '/placements': (context) => PlacementsScreen(),
        '/student_corner': (context) => StudentCornerScreen(),
        '/grievance': (context) => GrievanceScreen(),
        '/contact_us': (context) => ContactUsScreen(),
        '/campus': (context) => CampusScreen(),
        '/department': (context) => DepartmentScreen(),
        '/department_detail': (context) => DepartmentDetailScreen(departmentName: '', imagePath: ''),  // Adding the department detail screen to routes
        '/vision_mission': (context) => AboutUsVisionMissionScreen(),  // Adding the renamed vision & mission screen to routes
        '/principal': (context) => PrincipalScreen(),
      },
    );
  }
}
