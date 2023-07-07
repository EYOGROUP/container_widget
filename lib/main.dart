import 'package:flutter/material.dart';

bool onHover = false;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerApp(),
    );
  }
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 10,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.blueAccent, size: 33),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              size: 33,
              color: Colors.blueAccent,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 33,
              color: Colors.blueAccent,
            ),
          ),
        ],
        title: const Text(
          "Container",
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              height: 350,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "I'm Container",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                color: Colors.blueAccent,
                height: 400,
                width: 250,
                child: Center(
                  child: Wrap(
                    // alignment: WrapAlignment.start,
                    direction: Axis.vertical,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "1",
                          style: TextStyle(
                              color: Color.fromARGB(255, 129, 22, 22),
                              fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "5",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20, top: 50),
              height: 310,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "I'm Container",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
    // body: Text.rich(
    //   TextSpan(
    //     children: [
    //       TextSpan(text: "Hey"),
    //       TextSpan(text: " Younes", style: TextStyle()),
    //     ],
    //   ),
    // ),
  }
}

class ButtonHover extends StatefulWidget {
  const ButtonHover({super.key});

  @override
  State<ButtonHover> createState() => _ButtonHoverState();
}

class _ButtonHoverState extends State<ButtonHover>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(onHover ? Colors.amber : Colors.blue),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
      onPressed: () {
        setState(() {
          onHover = true;
        });
      },
      child: Text(
        "Click me!",
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
