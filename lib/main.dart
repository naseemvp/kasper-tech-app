import 'package:flutter/material.dart';

void main() {
  runApp(const KasperTechApp());
}

class KasperTechApp extends StatelessWidget {
  const KasperTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KASPER TECH',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF07111F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00D4FF),
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KASPER TECH'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.shield, size: 60, color: Colors.cyan),
            const SizedBox(height: 15),
            const Text(
              'KASPER TECH',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text('CCTV & SECURITY SYSTEM'),
            const SizedBox(height: 30),
            const Text('Welcome', style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            service(Icons.videocam, 'CCTV Installation'),
            service(Icons.build, 'Service & Repair'),
            service(Icons.receipt, 'Quotation & Invoice'),
            service(Icons.event, 'AMC Records'),
          ],
        ),
      ),
    );
  }

  Widget service(IconData icon, String name) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.cyan),
        title: Text(name),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
} 
