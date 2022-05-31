library widget_with_codeview;

import 'package:flutter/material.dart';

import 'source_code_view.dart';
import 'syntax_highlighter.dart';

class WidgetWithCodeView extends StatefulWidget {
  // Path of source file (relative to project root). The file's content will be
  // shown in the "Code" tab.
  final String sourceFilePath;
  final Widget child;
  final String? codeLinkPrefix;
  final bool? showLabelText;
  final Color? iconBackgroundColor;
  final Color? iconForegroundColor;
  final Color? labelBackgroundColor;
  final TextStyle? labelTextStyle;
  final double? height;
  final double? width;
  final String? title;
  final String? description;

  final SyntaxHighlighterStyle? syntaxHighlighterStyle;

  const WidgetWithCodeView({
    Key? key,
    required this.child,
    required this.sourceFilePath,
    this.codeLinkPrefix,
    this.showLabelText,
    this.iconBackgroundColor,
    this.iconForegroundColor,
    this.labelBackgroundColor,
    this.labelTextStyle,
    this.syntaxHighlighterStyle,
    this.height,
    this.width, this.title, this.description,
  }) : super(key: key);

  @override
  _WidgetWithCodeViewState createState() => _WidgetWithCodeViewState();
}

class _WidgetWithCodeViewState extends State<WidgetWithCodeView>
    with SingleTickerProviderStateMixin {
  String get routeName => '/${this.runtimeType.toString()}';

  Widget get sourceCodeView => SourceCodeView(
        filePath: this.widget.sourceFilePath,
        codeLinkPrefix: this.widget.codeLinkPrefix,
        labelTextStyle: widget.labelTextStyle,
        showLabelText: widget.showLabelText ?? true,
        iconBackgroundColor: widget.iconBackgroundColor,
        iconForegroundColor: widget.iconForegroundColor,
        labelBackgroundColor: widget.labelBackgroundColor,
        syntaxHighlighterStyle: widget.syntaxHighlighterStyle,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: widget.height ?? 300,
      color: Color(0xFF242526),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('title'),
          Text('description'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  
                  child: this.widget.child,
                ),
                Expanded(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SizedBox(
                        width: 600, height: 250, child: this.sourceCodeView),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

// This widget is always kept alive, so that when tab is switched back, its
// child's state is still preserved.
class _AlwaysAliveWidget extends StatefulWidget {
  final Widget child;

  const _AlwaysAliveWidget({Key? key, required this.child}) : super(key: key);

  @override
  _AlwaysAliveWidgetState createState() => _AlwaysAliveWidgetState();
}

class _AlwaysAliveWidgetState extends State<_AlwaysAliveWidget>
    with AutomaticKeepAliveClientMixin<_AlwaysAliveWidget> {
  @override
  Widget build(BuildContext context) {
    super.build(context); // This build method is annotated "@mustCallSuper".
    return this.widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}

class _ColoredTabBar extends Container implements PreferredSizeWidget {
  final Color color;
  final TabBar tabBar;

  _ColoredTabBar({Key? key, required this.color, required this.tabBar})
      : super(key: key);

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Material(
        elevation: 4.0,
        color: color,
        child: tabBar,
      );
}
