import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

void main() {
  runApp(DateTimePickerInPage());
}

class DateTimePickerInPage extends StatefulWidget {
  DateTimePickerInPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DateTimePickerInPageState();
}

DateTime _date = new DateTime.now();
final minimumYear = new DateTime(2016);
final maximumYear = new DateTime(2018);

const String DATE_FORMAT = 'yyyy-MM-dd';

class _DateTimePickerInPageState extends State<DateTimePickerInPage> {
  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    _dateTime = _date;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle hintTextStyle =
        Theme.of(context).textTheme.subhead.apply(color: Color(0xFF999999));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("DateTimePicker In Page")),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // min datetime hint
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 115.0,
                      child: Text('min DateTime:', style: hintTextStyle),
                    ),
                    Text(minimumYear.toString(),
                        style: Theme.of(context).textTheme.subhead),
                  ],
                ),
              ),

              // max datetime hint
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 115.0,
                      child: Text('max DateTime:', style: hintTextStyle),
                    ),
                    Text(maximumYear.toString(),
                        style: Theme.of(context).textTheme.subhead),
                  ],
                ),
              ),

              // init datetime hint
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 115.0,
                      child: Text('init DateTime:', style: hintTextStyle),
                    ),
                    Text(_date.toString(),
                        style: Theme.of(context).textTheme.subhead),
                  ],
                ),
              ),

              // date format
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 115.0,
                      child: Text('Date Format:', style: hintTextStyle),
                    ),
                    Text(DATE_FORMAT,
                        style: Theme.of(context).textTheme.subhead),
                  ],
                ),
              ),

              // date time picker widget
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 40.0),
                child: DateTimePickerWidget(
                  minDateTime: minimumYear,
                  maxDateTime: maximumYear,
                  initDateTime: _date,
                  dateFormat: DATE_FORMAT,
                  pickerTheme: DateTimePickerTheme(
                    showTitle: false,
                    title: Container(
                      width: double.infinity,
                      height: 40.0,
                      alignment: Alignment.center,
                      child: Text('Date Time Picker Title'),
                      decoration: BoxDecoration(color: Color(0xFFc0ca33)),
                    ),
                    backgroundColor: Color(0xFFf0f4c3),
                  ),
                  onChange: (dateTime, selectedIndex) {
                    setState(() {
                      _dateTime = dateTime;
                    });
                  },
                ),
              ),

              // selected date time
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Selected DateTime:',
                      style: Theme.of(context).textTheme.subhead),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      _dateTime != null
                          ? '${_dateTime.year}-${_dateTime.month.toString().padLeft(2, '0')}-${_dateTime.day.toString().padLeft(2, '0')}'
                          : '',
                      style: Theme.of(context).textTheme.title,
                    ),
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
