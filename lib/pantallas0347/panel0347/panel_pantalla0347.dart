import 'package:flutter/material.dart';
import 'package:correa0347/pantallas0347/panel0347/item_auto.dart';

class PanelPantalla0347 extends StatelessWidget {
  const PanelPantalla0347({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042c4d),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/CorreaMontesDiego/img_IOS/main/iconAuto.jpg"),
            ),
          )
        ],
        title: Text(
          'CmdCars Correa0347',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1),
                    spreadRadius: 5,
                    blurRadius: 5)
              ]),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Que quieres ver",
                hintStyle: TextStyle(fontWeight: FontWeight.w500),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.brown)),
          ),
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://raw.githubusercontent.com/CorreaMontesDiego/img_IOS/main/fondo_r32.png"),
          )),
        ),
        ListTile(
          title: Text("Top autos"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_outlined),
        ),
        Expanded(
          child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemdoctor()],
          ),
        )
      ]),
    );
  }
}
