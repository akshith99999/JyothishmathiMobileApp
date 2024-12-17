import 'package:flutter/material.dart';
import 'package:jits/widgets/carousel_slider_widget.dart';
import 'package:jits/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollControllerNews = ScrollController();
  ScrollController _scrollControllerMessages = ScrollController();
  ScrollController _scrollControllerRecruiters = ScrollController();

  List<String> _newsItems = [
    'JITS is organizing a Student Enablement Program on Feb 09, 2024',
    'Upcoming workshop on AI & ML on Jan 15, 2024',
    'Annual Sports Meet scheduled for Dec 20, 2024',
    'Placements drive for final year students on Dec 30, 2024',
    'New research lab inauguration on Jan 5, 2024',
  ];

  List<String> _messageItems = [
    'Tomorrow there is a CT exam',
    'Next week mid exams for 2nd years',
    'Everyone pay exam fee 750 before 28th Dec',
    'Library will be closed on Sunday',
    'New semester starts from January 3rd',
  ];

  List<String> _recruiters = [
    'lib/assets/images/genpact.png',
    'lib/assets/images/amazon.png',
    'lib/assets/images/infosys.png',
    'lib/assets/images/ibm.png',
    'lib/assets/images/deloitte.png',
    'lib/assets/images/wipro.png',
    'lib/assets/images/tata.png',
    'lib/assets/images/accenture.png',
  ];

  @override
  void initState() {
    super.initState();
    _autoScrollNews();
    _autoScrollMessages();
    _autoScrollRecruiters();
  }

  void _autoScrollNews() {
    Future.delayed(Duration(seconds: 1), () {
      if (_scrollControllerNews.hasClients) {
        final maxScroll = _scrollControllerNews.position.maxScrollExtent;
        final currentScroll = _scrollControllerNews.offset;
        final increment = 50.0;
        if (currentScroll < maxScroll) {
          _scrollControllerNews.animateTo(
            currentScroll + increment,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          ).then((_) => _autoScrollNews());
        } else {
          _scrollControllerNews.jumpTo(0.0);
          _autoScrollNews();
        }
      }
    });
  }

  void _autoScrollMessages() {
    Future.delayed(Duration(seconds: 1), () {
      if (_scrollControllerMessages.hasClients) {
        final maxScroll = _scrollControllerMessages.position.maxScrollExtent;
        final currentScroll = _scrollControllerMessages.offset;
        final increment = 50.0;
        if (currentScroll < maxScroll) {
          _scrollControllerMessages.animateTo(
            currentScroll + increment,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          ).then((_) => _autoScrollMessages());
        } else {
          _scrollControllerMessages.jumpTo(0.0);
          _autoScrollMessages();
        }
      }
    });
  }

  void _autoScrollRecruiters() {
    Future.delayed(Duration(seconds: 1), () {
      if (_scrollControllerRecruiters.hasClients) {
        final maxScroll = _scrollControllerRecruiters.position.maxScrollExtent;
        final currentScroll = _scrollControllerRecruiters.offset;
        final increment = 50.0;
        if (currentScroll < maxScroll) {
          _scrollControllerRecruiters.animateTo(
            currentScroll + increment,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          ).then((_) => _autoScrollRecruiters());
        } else {
          _scrollControllerRecruiters.jumpTo(0.0);
          _autoScrollRecruiters();
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollControllerNews.dispose();
    _scrollControllerMessages.dispose();
    _scrollControllerRecruiters.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(
        'Jyothishmathi Group of Institutions',
        style: TextStyle(fontSize: 18),
    ),
    backgroundColor: Colors.blue,
    ),
    drawer: CustomDrawer(),
    body: SingleChildScrollView(
    child: Column(
    children: [
    Image.asset('lib/assets/images/jits.png', height: 100),
    CarouselSliderWidget(),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children: [
    Image.asset('lib/assets/images/UGC.png', height: 200, width: 200),
    Image.asset('lib/assets/images/NBA.jpg', height: 200, width: 200),
    Image.asset('lib/assets/images/NAAC_A.jpg', height: 200, width: 200),
    Image.asset('lib/assets/images/JNTUH.jpg', height: 200, width: 200),
    Image.asset('lib/assets/images/ISO.jpg', height: 200, width: 200),
    Image.asset('lib/assets/images/AICTE.jpg', height: 200, width: 200),
    ],
    ),
    SizedBox(height: 20),
    Text(
    'Best Engineering College in Karimnagar',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    ),
    ),
    SizedBox(height: 20),
    Text(
    'With a commitment to excellence in education, Jyothishmathi Institute of Technology and Science provides state-of-the-art infrastructure, world-class faculty, and a conducive environment for learning and innovation.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    color: Colors.black,
    ),
    ),
    SizedBox(height: 20),
    Image.asset('lib/assets/images/our_college_news.jpg', width: double.infinity, fit: BoxFit.cover),
    SizedBox(height: 10),
    Text(
    'Our College News',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.green,
    ),
    ),
    SizedBox(height: 10),
    Container(
    height: 200,
    child: ListView.builder(
    controller: _scrollControllerNews,
    shrinkWrap: true,
    itemCount: _newsItems.length,
    itemBuilder: (context, index) {
    return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.blue[50],
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.blue),
    ),
    child: Text(
    _newsItems[index],
    style: TextStyle(fontSize: 16, color: Colors.black),
    ),
    );
    },
    ),
    ),
    SizedBox(height: 20),
    Image.asset('lib/assets/images/EU.jpg', width: double.infinity, height: 100, fit: BoxFit.cover),
    SizedBox(height: 10),
    Text(
    'Important Messages',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    ),
    ),
    SizedBox(height: 10),
    Container(
    height: 200,
    child: ListView.builder(
    controller: _scrollControllerMessages,
    shrinkWrap: true,
    itemCount: _messageItems.length,
    itemBuilder: (context, index) {
    return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.yellow[50],
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.yellow),
    ),
    child: Text(
    _messageItems[index],
    style: TextStyle(fontSize: 16, color: Colors.black),
    ),
    );
    },
    ),
    ),
    SizedBox(height: 20),
    Text(
    'Future-Oriented Courses Offered',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    ),
    ),
    Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: [
    ElevatedButton(
    onPressed: () {
    showCourses(context, 'B.Tech', [
    'Artificial Intelligence & Machine Learning',
    'Computer Science and Engineering',
    'Electronics and Communication Engineering',
    'Electrical & Electronics Engineering',
    'Civil Engineering',
    'Mechanical Engineering',
    ]);
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    child: Text(
      'B.Tech',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    ),
      ElevatedButton(
        onPressed: () {
          showCourses(context, 'M.Tech', [
            'Computer Science and Engineering',
            'Electronics and Communication Engineering',
          ]);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(
          'M.Tech',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          showCourses(context, 'Diploma', [
            'Civil Engineering',
            'Electrical & Electronics Engineering',
            'Mechanical Engineering',
          ]);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(
          'Diploma',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          showCourses(context, 'MBA', [
            'Master of Business Administration',
          ]);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(
          'MBA',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ],
    ),
    SizedBox(height: 20),
    // Top Notch Recruiters
    Text(
    'Top Notch Recruiters',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    ),
    ),
    SizedBox(height: 10),
    Text(
    'The T&P cell strives to provide an ample number of employment opportunities and training to help the students groom their overall skills to meet the needs of the corporate world.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    color: Colors.black,
    ),
    ),
    SizedBox(height: 20),
    Container(
    height: 100,
    child: ListView.builder(
    controller: _scrollControllerRecruiters,
    scrollDirection: Axis.horizontal,
    itemCount: _recruiters.length,
    itemBuilder: (context, index) {
    return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Image.asset(
    _recruiters[index],
    height: 80,
    fit: BoxFit.contain,
    ),
    );
    },
    ),
    ),
    SizedBox(height: 20),
    // University Gold Medalists
    Text(
    'UNIVERSITY GOLD MEDALISTS',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    ),
    ),
    Column(
    children: [
    Image.asset('lib/assets/images/university_gold_medalists_1.jpg', height: 150),
    Image.asset('lib/assets/images/university_gold_medalists_2.jpg', height: 150),
    ],
    ),
    SizedBox(height: 20),
    // Blue background section
    Container(
    color: Color(0xFF040751), // Blue background color
    padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Image.asset('lib/assets/images/jits.png', height: 100),
    SizedBox(height: 10),
    Text(
    'Jyothishmathi has made a significant contribution to the field of education in Telangana state.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    ),
    ),
    SizedBox(height: 20),
    // Examination section
    Align(
    alignment: Alignment.centerLeft,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Examination',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    SizedBox(height: 10),
    ...['Exam Branch', 'Notifications', 'Exam Schedules', 'Results', 'Student Certificate Verification']
        .map((item) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Text(
    item,
    style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    decoration: TextDecoration.underline,
    ),
    ),
    ))
        .toList(),
    SizedBox(height: 20),
    // R&D section
    Text(
    'R&D',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    SizedBox(height: 10),
    ...['Committee', 'Publications', 'Fund Received', 'Innovation Cell', 'MOUs', 'Code of Ethics']
        .map((item) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Text(
    item,
    style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    decoration: TextDecoration.underline,
    ),
    ),
    ))
        .toList(),
    SizedBox(height: 20),
    // Reach Us section
    Text(
    'Reach Us',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    SizedBox(height: 10),
    Text(
    'Jyothishmathi Institute of Technology and Science\nJITS Rd, Ramakrishna Colony.\nKarimnagar, Telangana 505527',
    style: TextStyle(fontSize: 16, color: Colors.white),
    ),
    SizedBox(height: 10),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    IconButton(
    icon: Image.asset('lib/assets/images/facebook.png'),
    iconSize: 30,
    onPressed: () {},
    ),
    IconButton(
    icon: Image.asset('lib/assets/images/twitter.png'),
    iconSize: 30,
    onPressed: () {},
    ),
    IconButton(
    icon: Image.asset('lib/assets/images/linkedin.png'),
    iconSize: 30,
    onPressed: () {},
    ),
    IconButton(
    icon: Image.asset('lib/assets/images/instagram.png'),
    iconSize: 30,
    onPressed: () {},
    ),
    IconButton(
    icon: Image.asset('lib/assets/images/youtube.png'),
    iconSize: 30,
    onPressed: () {},
    ),
    ],
    ),
    SizedBox(height: 20),
    // Footer section
    Text(
    '© 2024 Jyothishmathi Institute of Technology and Science.',
    style: TextStyle(fontSize: 16, color: Colors.white),
    ),
    SizedBox(height: 10),
    GestureDetector(
    onTap: () => _showPrivacyPolicy(context),
    child: Text(
    'Privacy Policy',
    style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    ),
    ),
    ),
    SizedBox(height: 10),
    GestureDetector(
    onTap: () => _showTermsConditions(context),
    child: Text(
    'Terms & Conditions',
    style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
  void showCourses(BuildContext context, String title, List<String> courses) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: Column(
            children: courses.map((course) => Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue),
              ),
              child: Row(
                children: [
                  Expanded(child: Text(course, style: TextStyle(fontSize: 16, color: Colors.black))),
                ],
              ),
            )).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showPrivacyPolicy(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
        title: Text('Privacy Policy'),
    content: SingleChildScrollView(
        child: Column(
        children: [
            Image.asset('lib/assets/images/pp.jpg', width: double.infinity, fit: BoxFit.cover),
      SizedBox(height: 10),
      Text(
        'Best Engineering Colleges in Karimnagar | B Tech Colleges in Telangana\n\nPrivacy Policy\n\nHomePrivacy Policy\n\nThis Privacy Policy (“Privacy Policy”) describes how we, Jyothishmathi (“JITS” or “we” or “us”) collect, use and share information about our users (“you”) through our Platform. Please review our Terms of Use and Privacy Policy (collectively the “Terms”) that govern the use of the Platform and Programs. This Privacy Policy shall form a part of the Terms by way of reference. All capitalized terms not defined in this Privacy Policy, have the respective meanings set forth in the Terms of Use. This Privacy Policy applies only to the part of the Platform provided by Jyothishmathi, and we are not responsible for the practices of persons, companies, institutions or websites that JITS does not control, manage, or employ. Please understand that by using our Platform or submitting any Personally Identifiable Information (defined below) to us, you consent and agree that we may collect, use, disclose and retain your information (including but not limited to your Personally Identifiable Information) in accordance with this Privacy Policy and our Terms of Use, and as permitted or required by law. JITS reserves the right to share the information collected hereunder with its own affiliates. In the event of sale or transfer of all or a portion of our business assets, consumer information may be one of the business assets that are transferred as part of the transaction. If you do not agree with these Terms, then please do not provide any Personally Identifiable Information to us. If you refuse or withdraw your consent, or if you choose not to provide us with any required Personally Identifiable Information, we may not be able to provide you with the services that can be offered on our Platform.',
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
      // Add more paragraphs as needed
      ],
    ),
    ),
    actions: [
    TextButton(
    onPressed: () => Navigator.pop(context),
    child: Text('Close'),
    ),
    ],
   ),
    );
  }

  void _showTermsConditions(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Terms & Conditions'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('lib/assets/images/tc.jpg', width: double.infinity, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(
                'Terms & Conditions\n\nThis website is designed, developed and maintained by JITS to disseminate information to JITS stakeholders in particular and public in general. Though all efforts have been made to ensure the accuracy and currency of the content on this website, the same should not be construed as a statement of law or used for any legal purposes. The documents and information displayed in this website are for reference purposes only and does not purport to be a legal document. In case of any ambiguity or doubt, users are advised to verify/check with the departments and/or other source(s), and obtain professional advice. Use of the JITS website is guided by the terms herein.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              // Add more paragraphs as needed
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
