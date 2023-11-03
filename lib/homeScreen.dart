import 'package:flutter/material.dart';
import 'constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> items = [
    Item(name: 'Apple', isSelected: false),
    Item(name: 'Banana', isSelected: false),
    Item(name: 'Orange', isSelected: false),
    Item(name: 'Mango', isSelected: false),
    Item(name: 'Grapes', isSelected: false),
    Item(name: 'Strawberry', isSelected: false),
    Item(name: 'Pineapple', isSelected: false),
    Item(name: 'Watermelon', isSelected: false),
    Item(name: 'Cherry', isSelected: false),
    Item(name: 'Blueberry', isSelected: false),
  ];

  void _selectItem(int index) {
    setState(() {
      items[index].isSelected = !items[index].isSelected;
    });
  }

  void _showSelectedItemsDialog() {
    int selectedCount = items.where((item) => item.isSelected).length;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selected Items'),
          content: Text('Number of selected items: $selectedCount'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selection Screen"),
        elevation: 3,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: bgColorAssBlack,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    items[index].name,
                    style: TextStyle(
                      color: items[index].isSelected? bgColorWhite : bgColorBlack,
                    ),
                  ),
                  onTap: () {
                    _selectItem(index);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  selected: items[index].isSelected,
                  selectedTileColor: colorDeepOrange,
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSelectedItemsDialog();
        },
        child: const Icon(Icons.check_sharp),
      ),
    );
  }
}


class Item {
  String name;
  bool isSelected;
  Item({required this.name, required this.isSelected});
}
