import 'package:fcui_instagram_2020/misc/UnicornOutlineButton.dart';
import 'package:fcui_instagram_2020/misc/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: greyDark,
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(logoInstagram,
                          width: 30.0, color: whiteColor),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                        child: SvgPicture.asset(logoInstagramtext,
                            width: 100.0, color: whiteColor),
                      ),
                    ],
                  ),
                  SvgPicture.asset(iconTelegram,
                      width: 30.0, color: whiteColor),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: blackColor,
                    child: Column(
                      children: [
                        SizedBox(height: 6.0),
                        // Story
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              photoStory(
                                  photo: "assets/images/profile_01.jpg",
                                  name: "Your Story"),
                              photoStory(
                                  photo: "assets/images/profile_02.jpg",
                                  name: "Latifah"),
                              photoStory(
                                  photo: "assets/images/profile_03.jpg",
                                  name: "Muhammad"),
                              photoStory(
                                  photo: "assets/images/profile_04.jpg",
                                  name: "Safeeya"),
                              photoStory(
                                  photo: "assets/images/profile_05.jpg",
                                  name: "Hawa"),
                              photoStory(
                                  photo: "assets/images/profile_06.jpg",
                                  name: "Yakob"),
                              photoStory(
                                  photo: "assets/images/profile_07.jpg",
                                  name: "Aisyah"),
                              photoStory(
                                  photo: "assets/images/profile_08.jpg",
                                  name: "Cahaya"),
                            ],
                          ),
                        ),

                        SizedBox(height: 6.0),
                        // Feed Profile
                        ListTile(
                          leading: UnicornOutlineButton(
                            min: 50,
                            strokeWidth: 2,
                            radius: 24,
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.yellowAccent,
                                  Colors.redAccent
                                ]),
                            onPressed: () {},
                            child: Container(
                              height: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                    "assets/images/profile_01.jpg",
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          title: Text("Siti Fatimah",
                              style: h3.copyWith(
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              )),
                          subtitle: Text("Jakarta, Indonesia",
                              style: h4.copyWith(
                                color: whiteColor,
                              )),
                          trailing: Icon(
                            Icons.more_vert,
                            color: whiteColor,
                          ),
                        ),

                        // Feed Image
                        Image.asset("assets/images/feed-image-01.jpg",
                            fit: BoxFit.fill),
                        SizedBox(height: 14.0),

                        // Comment
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      iconHeart,
                                      width: 30.0,
                                      color: whiteColor,
                                    ),
                                  ),
                                  SizedBox(width: 14.0),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      iconComment,
                                      width: 30.0,
                                      color: whiteColor,
                                    ),
                                  ),
                                  SizedBox(width: 14.0),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      iconTelegram,
                                      width: 30.0,
                                      color: whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  iconBookmark,
                                  width: 30.0,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.0),
                        // Feed Text
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: RichText(
                            text: TextSpan(
                                text: "Siti Fatimah",
                                style: h4.copyWith(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w700),
                                children: [
                                  TextSpan(
                                      text:
                                          " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
                                      style: lableFont.copyWith(
                                        color: whiteColor,
                                        height: 1.5,
                                      )),
                                ]),
                          ),
                        ),

                        SizedBox(height: 14.0),
                      ],
                    ),
                  ),
                  Container(color: Colors.green, height: 200.0),
                  Container(color: Colors.redAccent, height: 200.0),
                  Container(color: Colors.yellow, height: 200.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column photoStory({String photo, String name}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 6.0),
          child: UnicornOutlineButton(
            min: 64,
            strokeWidth: 2,
            radius: 30,
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [Colors.yellowAccent, Colors.redAccent]),
            onPressed: () {},
            child: Container(
              height: 55.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: Image.asset(photo, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Text(name, style: lableFont.copyWith(color: whiteColor))
      ],
    );
  }
}
