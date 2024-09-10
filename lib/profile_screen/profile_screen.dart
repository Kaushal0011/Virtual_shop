import 'package:virtual_shop/consts/consts.dart';
import 'package:virtual_shop/consts/lists.dart';
import 'package:virtual_shop/profile_screen/components/details_card.dart';
import 'package:virtual_shop/widget_common/bg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //edit profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(alignment: Alignment.topRight, child: Icon(Icons.edit, color: whiteColor,),).onTap(() { }),
              ),



              //user detail section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Image.asset(imgProfile2, width: 100, fit:BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "abc@gmail.com".text.white.make(),
                      ],
                    )),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: whiteColor,
                        )
                      ),
                      onPressed: () {},
                        child: logout.text.fontFamily(semibold).white.make(),)
                  ],
                ),
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(count: "00", title: "in your cart", width: context.screenWidth/3.4),
                  detailsCard(count: "32", title: "in your wishlist", width: context.screenWidth/3.4),
                  detailsCard(count: "675", title: "your orders", width: context.screenWidth/3.4),
                ],
              ),

            //  button section
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(color: lightGrey);
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: Image.asset(profileButtonsIcon[index], width: 22,),
                    title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                  );
                },
              ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),
            ],
          ),
        ),
      )

    );
  }
}
