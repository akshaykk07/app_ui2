import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            suffixIcon: Icon(Icons.search_rounded,color: Colors.black,),
            fillColor: Colors.white,
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink.shade50)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black54))),
      ),
    );
  }
}
