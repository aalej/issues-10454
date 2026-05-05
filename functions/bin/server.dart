import 'package:firebase_functions/firebase_functions.dart';

void main(List<String> args) {
  fireUp(args, (firebase) {
    firebase.https.onRequest(
      name: 'helloWorld',
      (_) async => Response(200, body: 'Hello from Dart Functions!'),
    );
  });
}

void byeWorld(Firebase firebase) {
  firebase.https.onRequest(
    name: 'byeWorld',
    (_) async => Response(200, body: 'Goodbye from Dart Functions!'),
  );
}

void anotherMain(List<String> args) {
  fireUp(args, (firebase) {
    firebase.https.onRequest(
      name: 'anotherHelloWorld',
      (_) async => Response(200, body: 'Hello from Dart Functions!'),
    );
  });
}
