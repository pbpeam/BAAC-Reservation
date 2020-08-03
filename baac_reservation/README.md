# baac_reservation

baac_reservation is a mobile application for reserving a meeting room or other rooms that must reserve in BAAC.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Usage

```dart

    children: <Widget>[

            new GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },

              child: CustomButton(
                title: 'Book a room',
              ),
            ),
    ]

    <!-- Create button named book a room to go to Calendar page when tapped. -->
```

## Roadmap
    Future feature: 
    - User can view rooms by tapping on date on the calendar .
    - The meeting organizer can send a notification via email to participants.
    - The meeting organizer can view all of the participants.
    - Participants can sign in the meeting via beacon technology.