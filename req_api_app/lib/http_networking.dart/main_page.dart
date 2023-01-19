import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final add1 = TextEditingController();
final add2 = TextEditingController();
final _formKey = GlobalKey<FormState>();

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // FIREBASE API
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Get Data From Api"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: users.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: Column(
                children: snapshot.data!.docs
                    .map(
                      (e) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Text(
                            e["name"][0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(e["name"]),
                        subtitle: Text(e["email"]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                add1.text = e["name"];
                                add2.text = e["email"];
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Center(
                                      child: Text("update Data"),
                                    ),
                                    content: Form(
                                      key: _formKey,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextFormField(
                                            controller: add1,
                                            autofocus: true,
                                            decoration: InputDecoration(
                                                hintText: "Input your name"),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter some text';
                                              }
                                              return null;
                                            },
                                          ),
                                          TextFormField(
                                            controller: add2,
                                            autofocus: true,
                                            decoration: InputDecoration(
                                                hintText: "Input your email"),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter some email';
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      IconButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            users.doc(e.id).update({
                                              "name": add1.text,
                                              "email": add2.text,
                                            });
                                            Navigator.of(context).pop();
                                          }
                                        },
                                        icon: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              icon: Icon(Icons.add),
                            ),
                            IconButton(
                              onPressed: () {
                                users.doc(e.id).delete();
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("error");
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Center(
                child: Text("input Data"),
              ),
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: add1,
                      autofocus: true,
                      decoration: InputDecoration(hintText: "Input your name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: add2,
                      autofocus: true,
                      decoration: InputDecoration(hintText: "Input your email"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some email';
                        }
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      users.add({
                        "name": add1.text,
                        "email": add2.text,
                      });
                      Navigator.of(context).pop();
                    }
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
