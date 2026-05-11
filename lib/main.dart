import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Kholifah',
      theme: ThemeData(fontFamily: 'Arial'),
      home: const MainPage(),
    );
  }
}

// ================= MAIN PAGE =================
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [CVPage(), SkillPage(), ContactPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF1F4E5F),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'CV'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Skill'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Kontak',
          ),
        ],
      ),
    );
  }
}

// ================= CV PAGE =================
class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: Row(
        children: [
          // ================= SIDEBAR =================
          Container(
            width: 300,
            color: const Color.fromARGB(255, 76, 108, 120),
            padding: const EdgeInsets.all(24),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  // FOTO
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "KHOLIFAH",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Staff HRGA",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),

                  const SizedBox(height: 40),

                  buildSidebarTitle("PROFILE"),

                  profileItem(Icons.location_city, "Tempat Lahir", "Jakarta"),

                  profileItem(
                    Icons.calendar_month,
                    "Tanggal Lahir",
                    "07 Mei 1995",
                  ),

                  profileItem(Icons.person, "Jenis Kelamin", "Perempuan"),

                  profileItem(Icons.favorite, "Status", "Single"),

                  profileItem(Icons.mosque, "Agama", "Muslim"),

                  profileItem(Icons.flag, "Kewarganegaraan", "Indonesia"),

                  const SizedBox(height: 35),
                ],
              ),
            ),
          ),

          // ================= CONTENT =================
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(40),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ABOUT
                  buildSectionTitle("TENTANG SAYA"),

                  const Text(
                    "Saya adalah seseorang yang memiliki kemampuan dalam bidang administrasi dan keuangan. "
                    "Terbiasa bekerja secara teliti, disiplin, serta mampu bekerja sama dalam tim maupun individu.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.8,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 35),

                  // PENDIDIKAN
                  buildSectionTitle("PENDIDIKAN"),

                  educationCard(
                    "2016 - 2018",
                    "AMIK Al Muslim",
                    "Manajemen Informatika",
                    "IPK 3.15",
                  ),

                  educationCard(
                    "2009 - 2012",
                    "SMK Bina Prestasi",
                    "Teknik Komputer Jaringan",
                    "",
                  ),

                  const SizedBox(height: 25),

                  // PENGALAMAN
                  buildSectionTitle("PENGALAMAN"),

                  experienceCard(
                    "Staff HRGA",
                    "PT Fanita Estetika",
                    "2020 - Sekarang",
                    [
                      "Membuat kontrak kerja bagi karyawan baru",
                      "Mengevaluasi kinerja karyawan",
                      "Mengelola absensi karyawan dan payroll",
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ================= WIDGET =================

  static Widget buildSidebarTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Divider(color: Colors.white54),
        const SizedBox(height: 10),
      ],
    );
  }

  static Widget profileItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 20),

          const SizedBox(width: 10),

          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title\n",
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  TextSpan(
                    text: value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget contactItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),

      child: Row(
        children: [
          Icon(icon, color: Colors.white),

          const SizedBox(width: 12),

          Expanded(
            child: Text(text, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  static Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),

      child: Row(
        children: [
          Container(width: 6, height: 28, color: const Color(0xFF1F4E5F)),

          const SizedBox(width: 12),

          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Color(0xFF1F4E5F),
            ),
          ),
        ],
      ),
    );
  }

  static Widget educationCard(
    String year,
    String school,
    String major,
    String score,
  ) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 20),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              school,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            Text(major),

            if (score.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  score,
                  style: const TextStyle(
                    color: Color.fromARGB(232, 196, 189, 189),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  static Widget experienceCard(
    String position,
    String company,
    String year,
    List<String> jobs,
  ) {
    return Card(
      elevation: 3,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              position,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            Text(
              "$company | $year",
              style: const TextStyle(color: Colors.blueGrey),
            ),

            const SizedBox(height: 15),

            ...jobs.map(
              (job) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("• "),
                    Expanded(child: Text(job)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SKILL PAGE
class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3EFEA),
      appBar: AppBar(
        title: const Text("KEMAMPUAN"),
        backgroundColor: const Color.fromARGB(255, 74, 107, 118),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ================= BAHASA (KIRI) =================
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TITLE BAHASA
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 76, 108, 120),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "BAHASA",
                        style: TextStyle(
                          color: Color.fromARGB(255, 247, 246, 246),
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // SKILL BAHASA
                  skillBar("Bahasa Indonesia", 1.0),
                  skillBar("Bahasa Inggris", 0.7),
                ],
              ),
            ),

            const SizedBox(width: 20),

            // ================= KEMAMPUAN (KANAN) =================
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TITLE KEMAMPUAN
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 76, 108, 120),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "KEMAMPUAN",
                        style: TextStyle(
                          color: Color.fromARGB(255, 246, 244, 244),
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // SKILL KEMAMPUAN
                  skillBar("Microsoft Word", 0.8),
                  skillBar("Microsoft Excel", 0.6),
                  skillBar("Power Point", 0.7),
                  skillBar("SAP", 0.85),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // WIDGET SKILL BAR
  Widget skillBar(String title, double value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 8),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: Colors.grey.shade300,
              valueColor: const AlwaysStoppedAnimation(
                Color.fromARGB(255, 76, 108, 120),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// CONTACT PAGE
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),

      appBar: AppBar(
        title: const Text(
          "KONTAK",
          style: TextStyle(
            color: Colors.white, // warna tulisan
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
        backgroundColor: const Color(0xFF1F4E5F),
        elevation: 0,
      ),

      body: Center(
        child: Container(
          width: 400,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(25),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 3,
                offset: const Offset(0, 5),
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // CARD KONTAK
              contactItem(Icons.location_on, "Alamat", "Bekasi"),

              const SizedBox(height: 15),

              contactItem(Icons.phone, "No. HP", "082298469495"),

              const SizedBox(height: 15),

              contactItem(Icons.email, "Email", "Olifah05@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }

  // WIDGET CONTACT ITEM
  Widget contactItem(IconData icon, String title, String value) {
    return Container(
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: const Color(0xFFF4F7FA),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFF1F4E5F),
            child: Icon(icon, color: Colors.white),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1F4E5F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
