import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MainWeatherScreen(),
    );
  }
}

// First Interface (Main Screen)
class MainWeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFF5A4FCF), // Background color inspired by the sample
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Mostly Cloudy",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mon June 17 | 10:00 AM",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "25°",
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "H:27  L:18",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeatherInfo(
                        icon: Icons.water_drop, value: "22%", label: "Rain"),
                    WeatherInfo(
                        icon: Icons.wind_power,
                        value: "12 km/h",
                        label: "Wind Speed"),
                    WeatherInfo(
                        icon: Icons.opacity, value: "18%", label: "Humidity"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SevenDayForecastScreen()),
                      );
                    },
                    child: Text(
                      "Next 7 Days >",
                      style: TextStyle(fontSize: 18, color: Colors.orange),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HourlyForecast(time: "7 am", icon: Icons.cloud, temp: "25°"),
                  HourlyForecast(
                      time: "8 am", icon: Icons.wb_sunny, temp: "26°"),
                  HourlyForecast(
                      time: "9 am", icon: Icons.cloudy_snowing, temp: "27°"),
                  HourlyForecast(time: "10 am", icon: Icons.cloud, temp: "28°"),
                ],
              ),



            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Navigate to the Notes screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotesScreen()),
              );
            },
            backgroundColor: Colors.blue,
            child: Icon(Icons.chat_bubble, color: Colors.white),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                "1+",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Second Interface (7-Day Forecast) with the previous structure you liked
class SevenDayForecastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFF5A4FCF), // Background color inspired by the sample
      appBar: AppBar(
        backgroundColor: Color(0xFF5A4FCF),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        title: Text(
          "7-Day Forecast",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tomorrow",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.cloud, size: 50, color: Colors.white),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "25°",
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Mostly Cloudy",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        WeatherInfo(
                            icon: Icons.water_drop,
                            value: "18%",
                            label: "Humidity"),
                        WeatherInfo(
                            icon: Icons.wind_power,
                            value: "12 km/h",
                            label: "Wind Speed"),
                        WeatherInfo(
                            icon: Icons.opacity, value: "22%", label: "Rain"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    WeatherForecast(
                        day: "Sat", icon: Icons.storm, temp: "21° / 7°"),
                    WeatherForecast(
                        day: "Sun", icon: Icons.cloud, temp: "23° / 8°"),
                    WeatherForecast(
                        day: "Mon", icon: Icons.air, temp: "24° / 9°"),
                    WeatherForecast(
                        day: "Tue",
                        icon: Icons.cloudy_snowing,
                        temp: "22° / 7°"),
                    WeatherForecast(
                        day: "Wed", icon: Icons.wb_sunny, temp: "27° / 6°"),
                    WeatherForecast(
                        day: "Thu", icon: Icons.umbrella, temp: "20° / 9°"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Navigate to the Notes screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotesScreen()),
              );
            },
            backgroundColor: Colors.blue,
            child: Icon(Icons.chat_bubble, color: Colors.white),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                "99+",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Note Pad Screen (Where user can add, delete, update notes)
// Note Pad Screen (Where user can add, delete, update notes)
class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<String> notes = [];
  TextEditingController controller = TextEditingController();

  void addNote() {
    if (controller.text.isNotEmpty) {
      setState(() {
        notes.add(controller.text);
        controller.clear();
      });
    }
  }

  void updateNote(int index, String updatedText) {
    setState(() {
      notes[index] = updatedText;
    });
  }

  void deleteNote(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6EAF3), // Light background color
      appBar: AppBar(
        title: Text("My Notes"),
        backgroundColor: Color(0xFF5A4FCF),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Enter a new note...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
              ),
              onSubmitted: (_) => addNote(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addNote,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5A4FCF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Add Note"),
            ),
            SizedBox(height: 20),
            Expanded(
              child: notes.isEmpty
                  ? Center(
                child: Text(
                  "No notes yet! Add your first note.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
                  : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Display two cards in each row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return NoteCard(
                    note: notes[index],
                    onEdit: () {
                      controller.text = notes[index];
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Update Note"),
                          content: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              hintText: "Update your note",
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                updateNote(index, controller.text);
                                Navigator.pop(context);
                              },
                              child: Text("Update"),
                            ),
                          ],
                        ),
                      );
                    },
                    onDelete: () => deleteNote(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  final String note;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  NoteCard({
    required this.note,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  note,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: onEdit,
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: onDelete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Weather Info Widget
class WeatherInfo extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  WeatherInfo({required this.icon, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.white),
        SizedBox(height: 5),
        Text(value, style: TextStyle(color: Colors.white, fontSize: 16)),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}

// Hourly Forecast Widget
class HourlyForecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;

  HourlyForecast({required this.time, required this.icon, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time, style: TextStyle(color: Colors.white, fontSize: 12)),
        Icon(icon, color: Colors.white, size: 24),
        Text(temp, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

// Weather Forecast Widget
class WeatherForecast extends StatelessWidget {
  final String day;
  final IconData icon;
  final String temp;

  WeatherForecast({required this.day, required this.icon, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day, style: TextStyle(color: Colors.white, fontSize: 16)),
          Icon(icon, color: Colors.white, size: 24),
          Text(temp, style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
