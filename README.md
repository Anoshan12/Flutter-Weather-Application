#Weather_Forecast & Notepad App

This project is a Weather Forecast and Notepad App built using Flutter. The application has the following features:

Weather Forecast: Displays the current weather, hourly forecast, and a 7-day weather forecast.

Notepad: A dedicated screen for creating, saving, updating, and deleting notes, similar to a mobile phone's notepad application.

Features

1. Weather Forecast

Main Screen:

Displays the current weather conditions (e.g., temperature, weather type).

Shows additional details like humidity, wind speed, and rain percentage.

Hourly forecast for the current day.

Button to navigate to the 7-day weather forecast.

7-Day Weather Screen:

Detailed forecast for the next 7 days.

Back button to navigate to the main screen.

2. Notepad

Notepad Screen:

Add new notes.

Save notes locally.

Update or delete existing notes.

User-friendly design and functionality.

Screenshots

Include screenshots of the app's main screens:

Main Weather Screen

7-Day Weather Forecast Screen

Notepad Screen

Installation

Follow these steps to run the application on your local machine:

Clone the Repository:

git clone https://github.com/your-username/weather-notepad-app.git
cd weather-notepad-app

Install Flutter:

Ensure you have Flutter installed on your system. Follow the instructions here if Flutter is not already installed.

Install Dependencies:

flutter pub get

Run the App:

flutter run

Project Structure

lib/
├── main.dart            # Entry point of the application
├── screens/
│   ├── main_weather_screen.dart  # Main weather screen UI
│   ├── seven_day_forecast_screen.dart  # 7-day forecast screen UI
│   └── notepad_screen.dart       # Notepad screen UI and functionality
├── widgets/
│   ├── hourly_forecast.dart  # Hourly weather forecast widget
│   ├── weather_info.dart     # Weather info widget (humidity, wind, etc.)
│   └── weather_forecast.dart # 7-day weather forecast list item widget

How to Use

Weather Features:

Open the app to view the current weather.

Navigate to the 7-day forecast using the "Next 7 Days" button.

Return to the main screen using the back button on the 7-day forecast screen.

Notepad Features:

Use the floating action button (bottom-right) on the 7-day forecast screen to open the notepad.

Add a note by typing and clicking the save button.

Update or delete saved notes using the respective buttons next to each note.
