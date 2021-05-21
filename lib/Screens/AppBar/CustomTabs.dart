import 'package:flutter/material.dart';
import '../../Utils/ColorUtils.dart';
import '../../Utils/Constant.dart';

class CustomTabItem {
  CustomTabItem({this.key, this.text});
  GlobalKey key;
  String text;
}

class CustomTabs extends StatefulWidget {
  CustomTabs({
    this.items,
    this.centerItemText,
    this.height: 54.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
    this.selectedIndex,
  });

  final List<CustomTabItem> items;
  final String centerItemText;
  final double height;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;
  int selectedIndex = 0;

  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate((widget?.items?.length ?? 0), (int index) {

      var item = widget.items[index];
      if(item == null) {
        return Container();
      }

      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    return BottomAppBar(
      key: widget.key,
      //shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.centerItemText ?? '',
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  bool isSelected(int index) => widget.selectedIndex == index;

  Widget _buildTabItem({
    CustomTabItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = isSelected(index) ? widget.selectedColor : widget.color;
    return Padding(
      padding: EdgeInsets.only(left: Constant.appDefaultSpacingHalf, right: Constant.appDefaultSpacingHalf),
      key: item.key,
      child: SizedBox(
        height: widget.height,
        //height: 300.0,
        child: InkWell(
          /*customBorder : RoundedRectangleBorder(borderRadius : BorderRadius.only(
              topLeft: Radius.elliptical(20.0, 40.0),
              topRight: Radius.elliptical(20.0, 40.0),
              bottomRight: Radius.elliptical(20.0, 40.0),
              bottomLeft: Radius.elliptical(20.0, 40.0))),*/
          highlightColor: Colors.transparent ,
          splashColor : ColorUtils.primaryColor.withOpacity(0.4),
          onTap: () => onPressed(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 2.0,),
              Container(
                padding: EdgeInsets.only(
                  bottom: Constant.appDefaultSpacingHalf, // space between underline and text
                ),
                decoration: isSelected(index) ? BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: ColorUtils.primaryColor,  // Text colour here
                      width: 1.0, // Underline width
                    ))
                ) : null,

                child: Text(item.text,
                  style: TextStyle(color: color)),
              )
              /*Text(
                item.text,
                style: TextStyle(color: color,fontSize: 11.0, decoration: TextDecoration.underline, decorationThickness: 2.0),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}