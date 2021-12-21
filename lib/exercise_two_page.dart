import 'package:flutter/material.dart';

String loreIpsum =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''';

class ExerciseTwoPage extends StatefulWidget {
  const ExerciseTwoPage({Key? key}) : super(key: key);

  @override
  _ExerciseTwoPageState createState() => _ExerciseTwoPageState();
}

class _ExerciseTwoPageState extends State<ExerciseTwoPage> {
  Duration duration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5 - Exercício 2 - Animações implícitas'),
      ),
      body: SingleChildScrollView(
        child: AnimatedContainer(
          duration: duration,
          child: Column(
            children: [
              GenericExpansionTileWidget(
                title: 'My expansion tile 1',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 2',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 3',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 4',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 5',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 6',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 7',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 8',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 9',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 10',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 11',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              GenericExpansionTileWidget(
                title: 'My expansion tile 12',
                subtitle: 'Subtitle Trailing expansion arrow icon',
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                    loreIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenericExpansionTileWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<Widget> children;

  const GenericExpansionTileWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.children,
  }) : super(key: key);

  @override
  _GenericExpansionTileWidgetState createState() =>
      _GenericExpansionTileWidgetState();
}

Color isExpanedColor(bool isExpaned) => isExpaned ? Colors.blue : Colors.black;

class _GenericExpansionTileWidgetState
    extends State<GenericExpansionTileWidget> {
  Duration duration = Duration(milliseconds: 200);
  bool isExpaned = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      child: GestureDetector(
        onTap: () => setState(() {
          isExpaned = !isExpaned;
        }),
        child: Column(
          children: [
            _listTileThemeBuilder(
              widget.title,
              widget.subtitle,
              duration,
              isExpaned,
            ),
            _childrenBuilder(
              duration,
              isExpaned,
              widget.children,
            )
          ],
        ),
      ),
    );
  }
}

Widget _listTileThemeBuilder(title, subtitle, duration, isExpaned) {
  return ListTileTheme(
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: isExpanedColor(isExpaned),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: isExpanedColor(isExpaned),
        ),
      ),
      trailing: _trailingBuilder(duration, isExpaned),
    ),
  );
}

Widget _trailingBuilder(duration, isExpaned) {
  return AnimatedRotation(
    duration: duration,
    turns: isExpaned ? 0.5 : 0,
    child: Icon(
      Icons.keyboard_arrow_down,
      color: isExpanedColor(isExpaned),
    ),
  );
}

Widget _childrenBuilder(duration, isExpaned, children) {
  return ClipRect(
    child: AnimatedAlign(
      alignment: Alignment.center,
      heightFactor: isExpaned ? 1 : 0,
      duration: duration,
      child: AnimatedContainer(
        duration: duration,
        child: Column(
          children: children,
        ),
      ),
    ),
  );
}
