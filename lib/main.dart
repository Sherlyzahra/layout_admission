import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WebLayout(),
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sidebar
        Flexible(
          flex: 2,
          child: Container(
            color: Color(0xFFF0C987),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Undiknas Admission',
                    style: TextStyle(color: Color(0xFF37474F), fontSize: 24),
                  ),
                ),
                SidebarItem(title: "Dashboard"),
                SidebarItem(title: "QR Code"),
                SidebarItem(title: "Bill"),
                SidebarItem(title: "E-polling"),
                SidebarItem(title: "Event Attendance"),
                SidebarItem(title: "Announcement"),
                SidebarItem(title: "Curriculum"),
                SidebarItem(title: "Profile"),
                SidebarItem(title: "KTM Registration"),
                SidebarItem(title: "Academic Guidance"),
                SidebarItem(title: "Study Plan Form"),
                SidebarItem(title: "Course Schedule"),
              ],
            ),
          ),
        ),
        
        // Main Content Area
        Expanded(
          flex: 8,
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16),
                color: Color(0xFF2A3B4D),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Student Dashboard',
                      style: TextStyle(color: Color(0xFFECEFF1), fontSize: 24),
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.notifications, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Main Content
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Color(0xFFF9F9F9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Student Identity Card Section
                      Card(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Student Identity Card',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img Kartu.png', // Replace with your image path
                                    width: 150,
                                    height: 100,
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Download"),
                                      ),
                                      SizedBox(height: 8),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("KTM Print Registration"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Academic Supervisor (PA)',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage('assets/supervisor.png'),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ir. Gede Humaswara Prathama S.T., M.T. ASEAN Eng.',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF455A64),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'adiewahyudi@undiknas.ac.id',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF757575),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Sidebar Item Widget
class SidebarItem extends StatelessWidget {
  final String title;

  SidebarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Color(0xFF37474F)),
      ),
    );
  }
}
