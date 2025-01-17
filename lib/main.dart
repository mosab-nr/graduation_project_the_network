import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

void main() async {
// Todo: Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();

// Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp( const MyApp(),);
}

void configureFirestore() {
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
  );
}

// Future<void> addFakeCompetitionData() async {
//   // Reference to Firestore
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//   // Fake competition data
//   List<Map<String, dynamic>> competitions = [
//     {
//       'title': 'Competition A',
//       'description': 'Description for Competition A',
//       'imageUrl': 'https://example.com/imageA.jpg',
//       'likes': 0,
//       'comments': 0,
//       'timestamp': FieldValue.serverTimestamp(),
//     },
//     {
//       'title': 'Competition B',
//       'description': 'Description for Competition B',
//       'imageUrl': 'https://example.com/imageB.jpg',
//       'likes': 0,
//       'comments': 0,
//       'timestamp': FieldValue.serverTimestamp(),
//     },
//     {
//       'title': 'Competition C',
//       'description': 'Description for Competition C',
//       'imageUrl': 'https://example.com/imageC.jpg',
//       'likes': 0,
//       'comments': 0,
//       'timestamp': FieldValue.serverTimestamp(),
//     },
//   ];
//
//   // Add fake competition data to Firestore
//   for (var competition in competitions) {
//     await firestore.collection('competitions').add(competition);
//   }
//
//   print('Fake competition data added to Firestore');
// }
//
// Future<void> addFakeVotingData() async {
//   // Reference to Firestore
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//   // Fake voting data
//   List<Map<String, dynamic>> votes = [
//     {
//       'title': 'Vote A',
//       'description': 'Description for Vote A',
//       'items': {
//         'Option 1': 0,
//         'Option 2': 0,
//         'Option 3': 0,
//       },
//     },
//     {
//       'title': 'Vote B',
//       'description': 'Description for Vote B',
//       'items': {
//         'Option 1': 0,
//         'Option 2': 0,
//       },
//     },
//     {
//       'title': 'Vote C',
//       'description': 'Description for Vote C',
//       'items': {
//         'Option 1': 0,
//         'Option 2': 0,
//         'Option 3': 0,
//         'Option 4': 0,
//       },
//     },
//   ];
//
//   // Add fake voting data to Firestore
//   for (var vote in votes) {
//     await firestore.collection('votes').add(vote);
//   }
//
//   print('Fake voting data added to Firestore');
// }
//
// Future<void> addTemplateDataToFirestore() async {
//   // Initialize Firebase
//   await Firebase.initializeApp();
//
//   // Reference to Firestore
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//   // Template data
//   List<Map<String, dynamic>> universities = [
//     {
//       'name': 'University A',
//       'departments': ['Department 1', 'Department 2', 'Department 3'],
//     },
//     {
//       'name': 'University B',
//       'departments': ['Department 4', 'Department 5'],
//     },
//     {
//       'name': 'University C',
//       'departments': ['Department 6', 'Department 7', 'Department 8', 'Department 9'],
//     },
//   ];
//
//   // Add template data to Firestore
//   for (var university in universities) {
//     await firestore.collection('universities').add(university);
//   }
//
//   print('Template data added to Firestore');
// }