
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Add Title",
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: colorGreen),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                maxLines: 2,
                decoration: const InputDecoration(
                  hintText: "Add Description",
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: colorGreen),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 35,
              child: ElevatedButton(
                onPressed: () {},
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
    );
  }
}