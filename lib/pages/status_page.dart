import 'package:flutter/material.dart';

class StatusPages extends StatelessWidget {
  const StatusPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 7.0),
          child: ListTile(
            leading: Container(
              width: 65,
              height: 65,

              child: CircleAvatar(


                child: GestureDetector(
                  onTap: () {
                    print("click");
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 35,left: 40),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff01C851),

                      ),
                      child: Center(child: Icon(Icons.add,size: 18,))),
                ),
                radius: 26.0,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
            ),
            title: Text(
              "My status",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [

                SizedBox(
                  width: 4,
                ),
                Text(
                  "tap to add status update",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                )
              ],
            ),

          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Recent updates",
                style: TextStyle(
                    color: Color(0xff065E52),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        ItemStatusWidget(),ItemStatusWidget(),ItemStatusWidget(),ItemStatusWidget(),ItemStatusWidget(),
      ],
    );
  }
}

class ItemStatusWidget extends StatelessWidget {
  const ItemStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7.0,left: 7),
      child: ListTile(
        leading: CircleAvatar(
          radius: 26.0,
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
        ),
        title: Text(
          "TechBro",
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            SizedBox(
              width: 4,
            ),
            Text(
              "Just now",
              style: TextStyle(
                color: Colors.black45,
              ),
            )
          ],
        ),
      ),
    );
  }
}
