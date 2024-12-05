# Weather App

A simple weather application built with Flutter that allows users to check the current weather based on their location or by manually searching for cities. The app fetches weather data from the OpenWeatherMap API and displays it in a user-friendly interface. The weather data is also cached locally for offline access.

## Features
- Current weather information: temperature, humidity, weather conditions
- Weather icons for visual representation
- Search feature to find weather for different cities
- Offline functionality: cached weather data using Hive

## Technologies Used
- **Flutter**: Cross-platform app development
- **OpenWeatherMap API**: Fetching real-time weather data
- **GetX**: State management for handling app state
- **Hive**: Local data storage for caching weather data

## Installation

### Prerequisites
- Flutter SDK installed (Follow the installation guide [Flutter Installation Guide](https://flutter.dev/docs/get-started/install))
- Get an API key from [OpenWeatherMap](https://openweathermap.org/api)

### Steps to Run the Project:
1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/weather_app.git
    ```

2. Navigate into the project directory:
    ```bash
    cd weather_app
    ```

3. Install dependencies:
    ```bash
    flutter pub get
    ```

4. Set your OpenWeatherMap API key:
    - Create a `.env` file in the root of your project and add:
      ```bash
      API_KEY=your-api-key-here
      ```

5. Run the app:
    ```bash
    flutter run
    ```

## Screenshot
![Screenshot 2024-12-05 151334](https://github.com/user-attachments/assets/67df8055-e717-452a-a3cc-954fc21d9477)


![Screenshot 2024-12-05 151354](https://github.com/user-attachments/assets/c77fa3cf-5add-4328-8796-44c4bf7fd63e)



## Contributing

If you'd like to contribute, feel free to fork the repo, make changes, and submit a pull request!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
