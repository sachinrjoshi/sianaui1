import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SianaFirebaseUser {
  SianaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SianaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SianaFirebaseUser> sianaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SianaFirebaseUser>((user) => currentUser = SianaFirebaseUser(user));
