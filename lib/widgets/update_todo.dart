import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/todo_brain.dart';

class UpdateToDo extends StatefulWidget {
  const UpdateToDo({
    super.key,
    required this.todo,
    required this.onToDoUpdate,
  });

  final ToDo todo;
  final Function(String, String) onToDoUpdate;

  @override
  State<UpdateToDo> createState() => _UpdateToDoState();
}

class _UpdateToDoState extends State<UpdateToDo> {
  late TextEditingController todoTitleController;
  late TextEditingController todoDetailsController;
  final GlobalKey<FormState> _updateFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    todoTitleController = TextEditingController(text: widget.todo.title);
    todoDetailsController = TextEditingController(text: widget.todo.description);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Form(
        key: _updateFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Update ToDo",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                controller: todoTitleController,
                validator: (String? value) {
                  if(value!.isEmpty) {
                    return "Please Enter any Title.";
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
                controller: todoDetailsController,
                validator: (String? value) {
                  if(value!.isEmpty) {
                    return "Please Enter Description!";
                  }
                  return null;
                },
                maxLines: 5,
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
                  if(_updateFormKey.currentState!.validate()) {
                    widget.onToDoUpdate(
                      todoTitleController.text.trim(),
                      todoDetailsController.text.trim(),
                    );
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorDeepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: Text("Update TODO"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
