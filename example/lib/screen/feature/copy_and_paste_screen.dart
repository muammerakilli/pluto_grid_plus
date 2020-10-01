import 'package:example/dummy_data/development.dart';
import 'package:example/widget/pluto_example_button.dart';
import 'package:example/widget/pluto_example_screen.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class CopyAndPasteScreen extends StatefulWidget {
  static const routeName = 'feature/copy-and-paste';

  @override
  _CopyAndPasteScreenState createState() => _CopyAndPasteScreenState();
}

class _CopyAndPasteScreenState extends State<CopyAndPasteScreen> {
  List<PlutoColumn> columns;

  List<PlutoRow> rows;

  @override
  void initState() {
    super.initState();

    columns = [
      PlutoColumn(
        title: 'column 1',
        field: 'column_1',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'column 2',
        field: 'column_2',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'column 3',
        field: 'column_3',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'column 4',
        field: 'column_4',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'column 5',
        field: 'column_5',
        type: PlutoColumnType.text(),
      ),
    ];

    rows = DummyData.rowsByColumns(length: 30, columns: columns);
  }

  @override
  Widget build(BuildContext context) {
    return PlutoExampleScreen(
      title: 'Copy and Paste',
      topTitle: 'Copy and Paste',
      topContents: [
        Text(
            'Copy and paste are operated depending on the cell and row selection status.'),
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
