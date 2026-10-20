import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4F4),
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,
        backgroundColor: const Color(0xFF00796B),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Gradient header with avatar, name, and course.
              Container(
                padding: const EdgeInsets.symmetric(vertical: 28),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF00796B), Color(0xFF4DB6AC)],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 58,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: Color(0xFF004D40),
                        child: Text(
                          'RT',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Ric Romil B. Tomas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'BS Information Technology',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Student details.
                    const Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.badge, color: Color(0xFF00796B)),
                            title: Text('Student Number'),
                            subtitle: Text('487164'),
                          ),
                          Divider(height: 1),
                          ListTile(
                            leading: Icon(Icons.school, color: Color(0xFF00796B)),
                            title: Text('Year Level and Section'),
                            subtitle: Text('3rd Year - 106L'),
                          ),
                          Divider(height: 1),
                          ListTile(
                            leading: Icon(Icons.email, color: Color(0xFF00796B)),
                            title: Text('Email Address'),
                            subtitle: Text('r.tomas.487164@umindanao.edu.ph'),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // About Me.
                    const Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF004D40),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "I'm a 3rd year IT student at the University of "
                      'Mindanao. I like figuring out how apps and games '
                      "work, and I'm slowly getting better at building my "
                      'own. When I\'m not coding, I\'m usually playing '
                      'sports, gaming with friends, or drawing.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),

                    const SizedBox(height: 24),

                    // Hobbies.
                    const Text(
                      'Hobbies and Interests',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF004D40),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        Chip(
                          avatar: Icon(Icons.sports_esports, size: 18),
                          label: Text('Games'),
                          backgroundColor: Color(0xFFB2DFDB),
                        ),
                        Chip(
                          avatar: Icon(Icons.sports_basketball, size: 18),
                          label: Text('Sports'),
                          backgroundColor: Color(0xFFB2DFDB),
                        ),
                        Chip(
                          avatar: Icon(Icons.brush, size: 18),
                          label: Text('Drawing'),
                          backgroundColor: Color(0xFFB2DFDB),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}