import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'widgets/add_todo.dart';
import 'widgets/update_todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: bgColorWhite,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: bgColorBlack,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Column(
                children: [
                  const AddToDo(),
                  const SizedBox(
                    height: 7,
                  ),
                  Expanded(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                      color: bgColorAssBlack,
                                    ),
                                  ),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: colorDeepOrange,
                                      child: Text(
                                        "${index + 1}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    title: Text('ListTile 6'),
                                    subtitle: Text('Subtitle 1'),
                                    trailing: const Icon(Icons.arrow_right_alt),
                                    onLongPress: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            content: Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height: 40,
                                                    child: TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        backgroundColor:
                                                            colorDeepOrange,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        showModalBottomSheet(
                                                          isScrollControlled: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return UpdateToDo();
                                                          },
                                                        );
                                                      },
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 5),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            Icon(
                                                              Icons
                                                                  .edit_calendar,
                                                              color:
                                                                  bgColorWhite,
                                                            ),
                                                            SizedBox(width: 8),
                                                            Text(
                                                              'Edit',
                                                              style: TextStyle(
                                                                color:
                                                                    bgColorWhite,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    height: 40,
                                                    child: TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        backgroundColor:
                                                            colorDeepOrange,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 5),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            Icon(
                                                              Icons
                                                                  .delete_forever_outlined,
                                                              color:
                                                                  bgColorWhite,
                                                            ),
                                                            SizedBox(width: 8),
                                                            Text(
                                                              'Delete',
                                                              style: TextStyle(
                                                                  color:
                                                                      bgColorWhite),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

