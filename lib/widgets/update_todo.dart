import 'package:flutter/material.dart';
import '../constants/colors.dart';

class UpdateToDo extends StatelessWidget {
  const UpdateToDo({
    super.key,
  });

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
              maxLines: 5,
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
              child: Text("Update TODO"),
            ),
          )
        ],
      ),
    );
  }
}
