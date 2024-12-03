import 'package:flutter/material.dart';
import 'package:ukl/botnav.dart';

class CinemaScreen extends StatefulWidget {
  @override
  State<CinemaScreen> createState() => _CinemaScreenState();
}

class _CinemaScreenState extends State<CinemaScreen> {
  final List<String> cinemas = [
    "AEON MALL JGC CGV",
    "AEON MALL TANJUNG BARAT XXI",
    "AGORA MALL IMAX",
    "AGORA MALL PREMIERE",
    "AGORA MALL XXI",
    "ARION XXI",
    "ARTHA GADING XXI",
    "BASSURA XXI",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: "Cari di TIX ID",
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dropdown untuk lokasi
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.blue),
                SizedBox(width: 8),
                DropdownButton<String>(
                  value: "JAKARTA",
                  items:
                      ["JAKARTA", "BANDUNG", "SURABAYA"].map((String location) {
                    return DropdownMenuItem<String>(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Logika perubahan lokasi
                  },
                  underline: SizedBox(), // Hilangkan garis dropdown
                ),
              ],
            ),
          ),

          // Banner edukasi
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.local_activity, color: Colors.blue, size: 40),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    "Tandai bioskop favoritmu!\nBioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Mengerti"),
                ),
              ],
            ),
          ),

          // Daftar bioskop
          Expanded(
            child: ListView.separated(
              itemCount: cinemas.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.circle_outlined, color: Colors.grey),
                  title: Text(cinemas[index]),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigasi ke detail bioskop
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbar(currentIndex: 0),
    );
  }
}
