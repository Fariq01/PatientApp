import 'package:flutter/material.dart';
import 'package:patient_app/dateRangePicker.dart';
import 'package:patient_app/datepicker.dart';
import 'package:patient_app/timepicker.dart';
// import 'package:intl/intl.dart';

class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  // DateTime _currentdate = new DateTime.now();
  DateTime _dateTime;

  // Future<Null> _selectdate(BuildContext context) async {
  //   final DateTime _seldate = await showDatePicker(
  //       context: context,
  //       initialDate: _currentdate,
  //       firstDate: DateTime(2010),
  //       lastDate: DateTime(2020),
  //       builder: (context, child) {
  //         return SingleChildScrollView(
  //           child: child,
  //         );
  //       });
  //   if (_seldate != null) {
  //     setState(() {
  //       _currentdate = _seldate;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // String _formatdate = new DateFormat.yMMMd().format(_currentdate);
    return new Scaffold(
        // appBar: AppBar(
        //   title: Text('APPOINTMENT'),
        // ),
        // body: Center(child: Text('Date: $_currentdate')),
        resizeToAvoidBottomInset: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
              child: Container(
                  child: Material(
            // borderRadius: BorderRadius.circular(10.0),
            shadowColor: Colors.blueAccent,
            color: Colors.blue,
            elevation: 7.0,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 60.0, 0.0, 0.0),
                  child: Center(
                    child: Text(
                      'APPOINTMENT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 40.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ))),
          Container(
              padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Category',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ])),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DatePickerWidget(),
                const SizedBox(height: 24),
                TimePickerWidget(),
                const SizedBox(height: 24),
                DateRangePickerWidget(),
                Container(
                  // Positioned(
                  padding: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                minimumSize: Size(105, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                shadowColor: Colors.blueAccent,
                                primary: Colors.white,
                                backgroundColor: Colors.green),
                            child: Row(
                              children: <Widget>[
                                Text('Cancel',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                minimumSize: Size(105, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                shadowColor: Colors.blueAccent,
                                primary: Colors.white,
                                backgroundColor: Colors.redAccent),
                            child: Row(
                              children: <Widget>[
                                Text('Delete',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                minimumSize: Size(105, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                shadowColor: Colors.blueAccent,
                                primary: Colors.white,
                                backgroundColor: Colors.blueAccent),
                            child: Row(
                              children: <Widget>[
                                Text('Save',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          )
                        ])
                  ]
                      // Container(
                      //     padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                      //     child: Column(children: <Widget>[
                      //       TextField(
                      //         decoration: InputDecoration(
                      //             labelText: 'DD/MM/YY',
                      //             labelStyle: TextStyle(
                      //                 fontFamily: 'Montserrat',
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.grey),
                      //             focusedBorder: UnderlineInputBorder(
                      //                 borderSide: BorderSide(color: Colors.blue))),
                      //       ),
                      //     ])),
                      // Text('Date: $_formatdate'),
                      // Container(
                      //     child: Row(children: <Widget>[
                      //   IconButton(
                      //     onPressed: () {
                      //       _selectdate(context);
                      //     },
                      //     icon: Icon(Icons.calendar_today),
                      //   )

                      //   //  )
                      // ]))

                      ),
                  // body: Padding(
                  // padding: EdgeInsets.all(32),
                )
              ],
            ),
            // ),
          )
        ]));
  }
}
