import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/model/survey.dart' as s;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'elements/survey_element_factory.dart';
import 'panel_title.dart';

class SurveyPageWidget extends StatefulWidget {
  final s.Page page;
  final int initIndex;

  const SurveyPageWidget({
    Key? key,
    required this.page,
    this.initIndex = 0,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => SurveyPageWidgetState();

  static SurveyPageWidgetState of(BuildContext context) {
    return context.findAncestorStateOfType<SurveyPageWidgetState>()!;
  }
}

class SurveyPageWidgetState extends State<SurveyPageWidget> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  bool _showBackToTopButton = false;
  late int maxIndex;
  @override
  void initState() {
    super.initState();

    maxIndex = widget.page.elements?.length ?? 0;
    itemPositionsListener.itemPositions.addListener(() {
      final v = itemPositionsListener.itemPositions.value
          .where((element) => element.index == 0)
          .toList();
      if (v.length > 0) {
        if (v.first.itemLeadingEdge < 0) {
          setState(() {
            _showBackToTopButton = true;
          });
        } else {
          setState(() {
            _showBackToTopButton = false;
          });
        }
      } else {
        setState(() {
          _showBackToTopButton = true;
        });
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      toIndex(widget.initIndex);
    });
  }

  void toIndex(int index) {
    final p = min(maxIndex - 1, max(0, index));
    if (itemScrollController.isAttached) {
      itemScrollController.jumpTo(index: p);
    }
  }

  @override
  void didUpdateWidget(covariant SurveyPageWidget oldWidget) {
    if (oldWidget.initIndex != widget.initIndex) {
      toIndex(widget.initIndex);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _showBackToTopButton == false
            ? null
            : Container(
                height: 45.0,
                width: 45.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    onPressed: () {
                      itemScrollController.jumpTo(index: 0);
                    },
                    child: Icon(
                      Icons.arrow_upward,
                    ),
                  ),
                ),
              ),
        body: GestureDetector(
          onTap: () {
            WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
          },
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 8.0,
                ),
                if (widget.page.title != null ||
                    widget.page.description != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PanelTitle(
                      panel: widget.page,
                      onTimeout: () {
                        setState(() {});
                      },
                    ),
                  ),
                Expanded(
                  child: ScrollablePositionedList.separated(
                    physics: ClampingScrollPhysics(),
                    itemCount: maxIndex,
                    itemScrollController: itemScrollController,
                    itemPositionsListener: itemPositionsListener,
                    itemBuilder: (context, index) {
                      if (index < widget.page.elements!.length && index >= 0) {
                        return SurveyElementFactory()
                            .resolve(context, widget.page.elements![index]);
                      } else {
                        return Container(
                          width: double.infinity,
                          // child: Image.asset(
                          //   'assets/images/decision.jpg',
                          //   fit: BoxFit.fill,
                          // ),
                        );
                      }
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SurveyElementFactory()
                          .separatorBuilder
                          .call(context);
                    },
                  ),
                ),
                SizedBox(
                  height: 45,
                ) //: Container()
              ],
            ),
          ),
        ));
  }
}
