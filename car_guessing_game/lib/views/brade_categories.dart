class BradeCate extends StatefulWidget {
  const BradeCate({Key? key}) : super(key: key);

  @override
  State<BradeCate> createState() => _BradeCateState();
}

class _BradeCateState extends State<BradeCate> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 1,
        title: const Text(
          "Mustafa Toprak",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        toolbarHeight: 70,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Text("M"),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings, size: 30),
          )
        ],
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    filled: true,
                    fillColor: Colors.amberAccent,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              (Expanded(
                child: Container(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: Strings.BrandList.length,
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ListTile(
                              onTap: (){},
                              leading: Image.asset(Strings.BrandList[index].imageUrl),
                              title: Text(Strings.BrandList[index].brandName),
                            )))),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
