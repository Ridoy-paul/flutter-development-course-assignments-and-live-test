import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/todo_brain.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({
    super.key,
    required this.onAddTap,
  });

  final Function(ToDo) onAddTap;

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  final TextEditingController todoTitleController = TextEditingController();
  final TextEditingController todoDescriptionController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _submitToDoForm() {
    ToDo todo = ToDo(
      title: todoTitleController.text.trim(),
      description: todoDescriptionController.text.trim(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    todoTitleController.clear();
    todoDescriptionController.clear();
    widget.onAddTap(todo);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: TextFormField(
                  controller: todoTitleController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Title";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Add Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: colorGreen),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: TextFormField(
                  controller: todoDescriptionController,
                  maxLines: 2,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Description";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Add Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: colorGreen),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _submitToDoForm();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorDeepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: Text("Add"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
