import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget useScreenTypeLayout({
  Widget sharedLayout,
  Widget mobilePortraitLayout,
  Widget mobileLandscapeLayout,
  Widget tabletPortraitLayout,
  Widget tabletLandscapeLayout,
  Widget desktopPortraitLayout,
  Widget desktopLandscapeLayout,
}) {
  return use(_ScreenTypeLayoutHook(
    sharedLayout: sharedLayout,
    mobilePortraitLayout: mobilePortraitLayout,
    mobileLandscapeLayout: mobileLandscapeLayout,
    tabletPortraitLayout: tabletPortraitLayout,
    tabletLandscapeLayout: tabletLandscapeLayout,
    desktopPortraitLayout: desktopPortraitLayout,
    desktopLandscapeLayout: desktopLandscapeLayout,
  ));
}

class _ScreenTypeLayoutHook extends Hook<Widget> {
  OrientationLayoutBuilder _mobileLayout;
  OrientationLayoutBuilder _tabletLayout;
  OrientationLayoutBuilder _desktopLayout;

  Widget sharedLayout;
  Widget mobilePortraitLayout;
  Widget mobileLandscapeLayout;
  Widget tabletPortraitLayout;
  Widget tabletLandscapeLayout;
  Widget desktopPortraitLayout;
  Widget desktopLandscapeLayout;

  _ScreenTypeLayoutHook({
    this.sharedLayout,
    this.mobilePortraitLayout,
    this.mobileLandscapeLayout,
    this.tabletPortraitLayout,
    this.tabletLandscapeLayout,
    this.desktopPortraitLayout,
    this.desktopLandscapeLayout,
  }) {
    _mobileLayout =
        getWidgetBuilder(mobilePortraitLayout, mobileLandscapeLayout);
    _tabletLayout =
        getWidgetBuilder(tabletPortraitLayout, tabletLandscapeLayout);
    _desktopLayout =
        getWidgetBuilder(desktopPortraitLayout, desktopLandscapeLayout);
  }

  @override
  _ScreenTypeLayoutHookState createState() => _ScreenTypeLayoutHookState();

  OrientationLayoutBuilder getWidgetBuilder(
      Widget portraitLayout, Widget landscapeLayout) {

    if (portraitLayout == null && landscapeLayout == null) {
      return _getSharedLayout();
    }  else if (portraitLayout != null && landscapeLayout == null) {
      landscapeLayout = portraitLayout;
    } else if (portraitLayout == null && landscapeLayout != null) {
      portraitLayout = landscapeLayout;
    }

    return OrientationLayoutBuilder(
      portrait: (context) => portraitLayout,
      landscape: (context) => landscapeLayout,
    );
  }

  Widget _getSharedLayout() {
    var _childWidget = sharedLayout ?? Container();
    return OrientationLayoutBuilder(
      portrait: (context) => _childWidget,
      landscape: (context) => _childWidget,
    );
  }
}

class _ScreenTypeLayoutHookState
    extends HookState<Widget, _ScreenTypeLayoutHook> {
  //ScreenTypeLayout _screenTypeLayout;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 600, watch: 250),
      mobile: hook._mobileLayout,
      tablet: hook._tabletLayout,
      desktop: hook._desktopLayout,
    );

    //return _screenTypeLayout;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
