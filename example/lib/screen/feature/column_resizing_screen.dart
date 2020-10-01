import 'package:example/widget/pluto_example_button.dart';
import 'package:example/widget/pluto_example_screen.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class ColumnResizingScreen extends StatefulWidget {
  static const routeName = 'feature/column-resizing';

  @override
  _ColumnResizingScreenState createState() => _ColumnResizingScreenState();
}

class _ColumnResizingScreenState extends State<ColumnResizingScreen> {
  List<PlutoColumn> columns;

  List<PlutoRow> rows;

  @override
  void initState() {
    super.initState();

    columns = [
      PlutoColumn(
        title: 'Column A',
        field: 'column_a',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Column B',
        field: 'column_b',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Column C',
        field: 'column_c',
        type: PlutoColumnType.text(),
      ),
    ];

    rows = [
      PlutoRow(
        cells: {
          'column_a': PlutoCell(value: 'a1'),
          'column_b': PlutoCell(value: 'b1'),
          'column_c': PlutoCell(value: 'c1'),
        },
      ),
      PlutoRow(
        cells: {
          'column_a': PlutoCell(value: 'a2'),
          'column_b': PlutoCell(value: 'b2'),
          'column_c': PlutoCell(value: 'c2'),
        },
      ),
      PlutoRow(
        cells: {
          'column_a': PlutoCell(value: 'a3'),
          'column_b': PlutoCell(value: 'b3'),
          'column_c': PlutoCell(value: 'c3'),
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PlutoExampleScreen(
      title: 'Column resizing',
      topTitle: 'Column resizing',
      topContents: [
        Text(
            'Dragging the icon to the right of the column title left or right changes the width of the column.'),
        SizedBox(
          height: 10,
        ),
        Text(
            'If you tap the icon to the right of the column title, the dropdown menu appears. And if you tap AutoSize, the width of the column is automatically changed according to the size of the cell value.'),
      ],
      topButtons: [
        PlutoExampleButton(
          url:
              'https://github.com/bosskmk/pluto_grid/blob/master/example/lib/screen/home_screen.dart',
        ),
      ],
      body: PlutoGrid(
        columns: columns,
        rows: rows,
        onChanged: (PlutoOnChangedEvent event) {
          print(event);
        },
      ),
    );
  }
}
