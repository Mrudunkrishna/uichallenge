import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool _showImages = false;
  bool showimages = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
        ],
      ),
      
      
      
      
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            SizedBox(width: 10,),
            Image.asset("assets/images/clapperboard.png",width: 30,height: 30,),
            SizedBox(width: 5,),
            Text("CIMA",style: TextStyle(fontSize: 30),),
            Text("X",style: TextStyle(fontSize: 30,color: Color.fromRGBO(255, 204, 0, 1)),),
            SizedBox(width: 240,),
            Icon(Icons.search,size:36,)
          ],),
        
        
          SizedBox(height: 15,),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: [
              GestureDetector(onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => crseltouch(),));
              },
                child: Container(
                  width: 400, // Set width of the container
                  height: 200, // Set height of the container
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle 111.jpg"),
                      fit: BoxFit.cover, // This property ensures the image covers the whole container
                    ),
                  ),
                ),
              ),
        
              GestureDetector(onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => crsltwo(),));
              },
                child: Container(
                  width: 400, // Set width of the container
                  height: 200, // Set height of the container
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/jhonwick.png"),
                      fit: BoxFit.cover, // This property ensures the image covers the whole container
                    ),
                  ),
                ),
              ),
        
              GestureDetector(onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => crseltouch(),));
              },
                child: Container(
                  width: 400, // Set width of the container
                  height: 200, // Set height of the container
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bb.png"),
                      fit: BoxFit.cover, // This property ensures the image covers the whole container
                    ),
                  ),
                ),
              ),
            ],
          ),
        
        
        SizedBox(height: 25,),
        
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(color: Colors.white,
              height: 60,
              child: Row(children: [
        
                SizedBox(width: 15),
                Container(
                  width: 125,
                  height: 35,
                  child: Material(
                    elevation: 5, // Adjust the elevation value as needed
                    shadowColor: Colors.grey, // Adjust the shadow color as needed
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Action",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 204, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
        
                //
                //
                SizedBox(width: 15),
                Container(
                  width: 125,
                  height: 35,
                  child: Material(
                    elevation: 5, // Adjust the elevation value as needed
                    shadowColor: Colors.grey, // Adjust the shadow color as needed
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Thriller",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 204, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                //
                //
                SizedBox(width: 15),
                Container(
                  width: 125,
                  height: 35,
                  child: Material(
                    elevation: 5, // Adjust the elevation value as needed
                    shadowColor: Colors.grey, // Adjust the shadow color as needed
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Drama",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 204, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                //
                SizedBox(width: 15),
                Container(
                  width: 125,
                  height: 35,
                  child: Material(
                    elevation: 5, // Adjust the elevation value as needed
                    shadowColor: Colors.grey, // Adjust the shadow color as needed
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Horror",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 204, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
        
        
        
        
              ],),
            ),
          ),
        
        
        SizedBox(height: 1,),
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                "Trending",
                style: TextStyle(fontSize: 18),
              ),
              Spacer(), // Use Spacer to push See all button to the right
              TextButton(
                onPressed: () {
                  setState(() {
                    _showImages = !_showImages; // Toggle the visibility of images
                  });
                },
                child: Text(
                  "See all",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
        
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Image.asset("assets/images/Rectangle 6.png",width: 150,height: 150,),
              Image.asset("assets/images/Rectangle 12.png",width: 150,height: 150,),
              Image.asset("assets/images/Rectangle 13.png",width: 150,height: 150,),
              Image.asset("assets/images/Rectanglelst.png",width: 150,height: 150,),
            ],),
          ),
        
        
          SizedBox(height: 20), // Add some space between text and containers
          _showImages
              ? Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image.asset("assets/images/peaky.png",width: 150,height: 150,),
                  Image.asset("assets/images/stellar2.png",width: 150,height: 150,),
                  Image.asset("assets/images/interstellar.png",width: 150,height: 150,),
                  Image.asset("assets/images/Rectanglelst.png",width: 150,height: 150,),
                ],),
              ),
            ],
          )
              : SizedBox(),
        
        
        
        
        
          SizedBox(height: 1,),
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                "Popular",
                style: TextStyle(fontSize: 18),
              ),
              Spacer(), // Use Spacer to push See all button to the right
              TextButton(
                onPressed: () {
                  setState(() {
                    showimages = !showimages; // Toggle the visibility of images
                  });
                },
                child: Text(
                  "See all",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
        
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Image.asset("assets/images/peaky.png",width: 150,height: 150,),
              Image.asset("assets/images/stellar2.png",width: 150,height: 150,),
              Image.asset("assets/images/interstellar.png",width: 150,height: 150,),
              Image.asset("assets/images/Rectanglelst.png",width: 150,height: 150,),
            ],),
          ),
        
        
          SizedBox(height: 20), // Add some space between text and containers
          showimages
              ? Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image.asset("assets/images/Rectangle 6.png",width: 150,height: 150,),
                  Image.asset("assets/images/Rectangle 12.png",width: 150,height: 150,),
                  Image.asset("assets/images/Rectangle 13.png",width: 150,height: 150,),
                  Image.asset("assets/images/Rectanglelst.png",width: 150,height: 150,),
                ],),
              ),
            ],
          )
              : SizedBox(),
        
        
        
        
        
        
        
        
        
        
        ]),
      ),
      
      
      
    );
  }
}
