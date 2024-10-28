// import 'package:flutter/material.dart';
//
// import '../logic/model/user_model.dart';
// import '../shared/api/fetch_user_dio/userdata.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   UserService userService = UserService();
//   List<UserModel> usersData = []; // This will hold a list of users
//
//   Future<void> fetchUsers() async {
//     var users =
//         await userService.fetchRandomUsers(5); // Fetch 5 users for example
//     setState(
//       () {
//         usersData = users; // Save the list of users
//       },
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchUsers(); // Fetch multiple users when the page starts
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Simple API"),
//         centerTitle: true,
//       ),
//       body: ListView.separated(
//         itemCount: usersData.length,
//         itemBuilder: (context, index) => userItem(
//           name: usersData[index].name,
//           email: usersData[index].email,
//           image: usersData[index].imageUrl,
//         ),
//         separatorBuilder: (BuildContext context, int index) => const SizedBox(
//           height: 10,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           await fetchUsers();
//         },
//         child: const Icon(Icons.refresh),
//       ),
//     );
//   }
// }
//
// Widget userItem({
//   required String name,
//   required String email,
//   required String image,
// }) =>
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: NetworkImage(image),
//           ),
//           const SizedBox(
//             width: 20,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 name,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(email)
//             ],
//           ),
//         ],
//       ),
//     );
