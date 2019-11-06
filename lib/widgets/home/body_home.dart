import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var _currentValuePresentacion = 0.0;
  var _value = "Kg";


  var _pesoNumberInputIsValid = true;
  var _posologiaNumberInputIsValid = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: height * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Peso',
                      style: TextStyle(
                          fontFamily: 'Awaita',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: width * 0.55,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Ingresa un numero: ',
                                    errorText: _posologiaNumberInputIsValid
                                        ? null
                                        : 'Introduzca un numero valido',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                onChanged: (String val) {
                                  final v = int.tryParse(val);
                                  if (v == null) {
                                    setState(() => _posologiaNumberInputIsValid = false);
                                  } else {
                                    setState(() => _posologiaNumberInputIsValid = true);
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: DropdownButton<String>(
                                items: [
                                  DropdownMenuItem<String>(
                                    child: Text('Kg'),
                                    value: "Kg",
                                  ),
                                  DropdownMenuItem<String>(
                                    child: Text('Mg'),
                                    value: "mg",
                                  ),
                                ],
                                onChanged: (String value) {
                                  _value = value;
                                  setState(() {
                                    _value = value;
                                  });
                                },
                                hint: Text('Unidad'),
                                value: _value,
                              ),
                            ),
                          ],
                        )),
                    Text(
                      'Posologia',
                      style: TextStyle(
                          fontFamily: 'Awaita',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: width * 0.55,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Ingresa un numero: ',
                                    errorText: _pesoNumberInputIsValid
                                        ? null
                                        : 'Introduzca un numero valido',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                onChanged: (String val) {
                                  final v = int.tryParse(val);
                                  if (v == null) {
                                    setState(() => _pesoNumberInputIsValid = false);
                                  } else {
                                    setState(() => _pesoNumberInputIsValid = true);
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: DropdownButton<String>(
                                items: [
                                  DropdownMenuItem<String>(
                                    child: Text('Kg'),
                                    value: "Kg",
                                  ),
                                  DropdownMenuItem<String>(
                                    child: Text('Mg'),
                                    value: "mg",
                                  ),
                                ],
                                onChanged: (String value) {
                                  _value = value;
                                  setState(() {
                                    _value = value;
                                  });
                                },
                                hint: Text('Unidad'),
                                value: _value,
                              ),
                            ),
                          ],
                        )),
                    Text(
                      'Presentación',
                      style: TextStyle(
                          fontFamily: 'Awaita',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                   print(_currentValuePresentacion);
                                  });
                                },
                                value: 0,
                              ),
                              Text(
                                'Comprimido',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                  });
                                },
                                value: 1,
                              ),
                              Text(
                                'Gotas',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                  });
                                },
                                value: 2,
                              ),
                              Text(
                                'Inyectable',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                  });
                                },
                                value: 3,
                              ),
                              Text(
                                'Suspensión',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                  });
                                },
                                value: 4,
                              ),
                              Text(
                                'Sobres',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                  });
                                },
                                value: 5,
                              ),
                              Text(
                                'Solución',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                groupValue: _currentValuePresentacion,
                                onChanged: (value){
                                  setState(() {
                                   _currentValuePresentacion = value; 
                                  });
                                },
                                value: 6,
                              ),
                              Text(
                                'Supositorios',
                                style: TextStyle(
                                    fontFamily: 'Awaita',
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Repartir en',
                      style: TextStyle(
                          fontFamily: 'Awaita',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Slider(
                      onChanged: (index) {
                        setState(() {
                          _currentValuePresentacion = index;
                        });
                      },
                      divisions: 4,
                      value: _currentValuePresentacion,
                      label: _currentValuePresentacion == 0
                          ? "4"
                          : _currentValuePresentacion == 25
                              ? "6"
                              : _currentValuePresentacion == 50
                                  ? "8"
                                  : _currentValuePresentacion == 75
                                      ? "12"
                                      : "24",
                      max: 100,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.refresh),
              ),
            )
          ],
        ));
  }
}
