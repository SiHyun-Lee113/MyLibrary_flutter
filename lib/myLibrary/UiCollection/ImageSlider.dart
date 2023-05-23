import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyImageSlider extends StatefulWidget {
  final List imageList;

  MyImageSlider({required this.imageList});

  @override
  State<StatefulWidget> createState() {
    return _MyImageSliderState();
  }
}

class _MyImageSliderState extends State<MyImageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    // 이미지 슬라이드에 들어가는 아이템 리스트
    List<Widget> imageSliders = widget.imageList
        .map(
          (item) =>
          GestureDetector(
              //Todo 이미지 클릭 시 이벤트 처리
              onTap: () {
                print(item);
              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        //Todo 현재 코드는 assets/images 안에 있는 정적 리소스지만 나중에는 웹뷰(데이터베이스 or 서버에서 받은 url)로 교체
                        Image.asset(item),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              )),
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("슬라이드 이미지(이벤트 창 활용, 메인 페이지 이벤트"),
      ),
      body:
      Column(
        children: [
          Expanded(
              child: CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageList
                .asMap()
                .entries
                .map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme
                          .of(context)
                          .brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
