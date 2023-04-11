import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/elements/survey_element_factory.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:logging/logging.dart';

class CustomLayoutPage extends StatelessWidget {
  final s.Survey? survey;
  final Map<String, Object?>? answer;

  const CustomLayoutPage({Key? key, this.survey, this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Survey Customize:' + (survey?.title ?? '')),
            ),
            body: survey == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : s.SurveyWidget(
                    showQuestionsInOnePage: true,
                    survey: survey!,
                    answer: answer,
                    onChange: (v) {
                      print(v);
                    },
                    builder: (context) => CustomLayout(),
                    onSubmit: (v) {
                      print(v);
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                          child: SingleChildScrollView(
                                              child: Text(v.toString())))),
                                  ElevatedButton(
                                    child: const Text('Close'),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )));
  }
}

class CustomLayout extends StatefulWidget {
  const CustomLayout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CustomLayoutState();
}

class CustomLayoutState extends State<CustomLayout> {
  final Logger logger = Logger('CustomLayoutState');

  s.Survey get survey => SurveyProvider.of(context).survey;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = _reCalculatePages(
        SurveyProvider.of(context).showQuestionsInOnePage, survey);
    assert(pages.length == 1);
    IndexedWidgetBuilder itemBuilder(s.Page page) {
      return (context, index) {
        if (index < page.elements!.length && index >= 0) {
          return SurveyElementFactory().resolve(context, page.elements![index]);
        } else {
          return Container(
            width: double.infinity,
          );
        }
      };
    }

    final IndexedWidgetBuilder separatorBuilder =
        (BuildContext context, int index) {
      return SurveyElementFactory().separatorBuilder.call(context);
    };
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: ListView.separated(
              itemBuilder: itemBuilder(pages[0]),
              separatorBuilder: separatorBuilder,
              itemCount: pages[0].elements?.length ?? 0,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: TextButton(
              onPressed: () => s.SurveyWidgetState.of(context).submit(),
              child: Text(
                'Submit',
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<s.Page> _reCalculatePages(bool showQuestionsInOnePage, s.Survey survey) {
    var pages = <s.Page>[];
    pages = [
      s.Page()
        ..elements = (survey.pages ?? [])
            .map<List<s.ElementBase>>((e) => e.elements ?? <s.ElementBase>[])
            .fold(<s.ElementBase>[],
                (previousValue, element) => previousValue!..addAll(element))
    ];
    return pages;
  }
}
