import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  final int alarmId = 42;  // 알람 ID를 고정시켜서 사용

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _setAlarm,
              child: Text('Set Alarm'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _stopAlarm,
              child: Text('Stop Alarm'),
            ),
          ],
        ),
      ),
    );
  }

  void _setAlarm() {
    final alarmSettings = AlarmSettings(
      id: alarmId,
      dateTime: DateTime.now().add(Duration(seconds: 5)), // 10초 후 알람 설정
      assetAudioPath: 'assets/sounds/alarm.mp3', // 알람 사운드 경로
      loopAudio: true,
      vibrate: true,
      notificationTitle: 'Alarm',
      notificationBody: 'This is your alarm notification',
      enableNotificationOnKill: true,
    );

    Alarm.set(alarmSettings: alarmSettings).then((_) {
      print('Alarm set for 10 seconds from now.');
    }).catchError((error) {
      print('Error setting alarm: $error');
    });
  }

  void _stopAlarm() {
    Alarm.stop(alarmId).then((_) {
      print('Alarm stopped.');
    }).catchError((error) {
      print('Error stopping alarm: $error');
    });
  }
}
