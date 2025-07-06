import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoverContainer extends StatefulWidget {
  final String backgroundImage;
  final String text;
  final Widget projectPages;
  const HoverContainer({
    super.key,
    required this.backgroundImage,
    required this.text,
    required this.projectPages,
  });

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;
  Map<String, String> projects = {
    "Ignite App": "123Ignite App ",
    "Forex": "Forex ",
    "Sciverse Website": "Sciverse Website ",
    "Wardrobe": "Wardrobe ",
    "Instagram": "Instagram ",
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(
              MediaQuery.of(context).orientation == Orientation.landscape
                  ? 50
                  : 10),
          vertical: ScreenUtil().setHeight(
              MediaQuery.of(context).orientation == Orientation.landscape
                  ? 80
                  : 10)),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return widget.projectPages;
              },
            ),
          );
        },
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: ScreenUtil().setWidth(
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 400
                        : 200),
                height: ScreenUtil().setHeight(
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 400
                        : 200),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(widget.backgroundImage),
                  ),
                  borderRadius:
                      BorderRadius.circular(ScreenUtil().setWidth(10)),
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 400
                        : 200),
                height: ScreenUtil().setHeight(
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 400
                        : 200),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius:
                      BorderRadius.circular(ScreenUtil().setWidth(10)),
                ),
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: _isHovered ? 1.0 : 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(10)),
                    color: Colors.black.withOpacity(0.3),
                  ),
                  width: ScreenUtil().setWidth(
                      MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? 400
                          : 200),
                  height: ScreenUtil().setHeight(
                      MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? 400
                          : 200),
                  child: Center(
                    child: AutoSizeText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      widget.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
