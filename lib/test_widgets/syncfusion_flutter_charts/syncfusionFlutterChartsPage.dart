import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncfusionFlutterChartsPage extends StatefulWidget {
  const SyncfusionFlutterChartsPage({super.key});

  @override
  State<SyncfusionFlutterChartsPage> createState() =>
      _SyncfusionFlutterChartsPageState();
}

class _SyncfusionFlutterChartsPageState
    extends State<SyncfusionFlutterChartsPage> {
  List<ChartData1> data1 = [
    ChartData1('1', 35),
    ChartData1('2', 28),
    ChartData1('3', 34),
    ChartData1('4', 32),
    ChartData1('5', 40)
  ];

  List<ChartData2> data2 = [
    ChartData2('09.01', 30),
    ChartData2('09.02', 25),
    ChartData2('09.03', 30),
    ChartData2('09.04', 25),
  ];
  List<ChartData2> data3 = [
    ChartData2('09.01', 20),
    ChartData2('09.02', 19),
    ChartData2('09.03', 25),
    ChartData2('09.04', 26),
  ];

  @override
  Widget build(BuildContext context) {
    double average1 =
        data2.map((data) => data.score).reduce((a, b) => a + b) / data2.length;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SfCartesianChart(
                backgroundColor: Colors.white,
                title: ChartTitle(
                    text: 'BarChart',
                    textStyle: TextStyle(fontSize: 20),
                    alignment: ChartAlignment.center,
                    borderColor: Colors.black),
                legend: Legend(
                  title: LegendTitle(text: '범례'),
                  backgroundColor: Colors.greenAccent,
                  position: LegendPosition.bottom,
                  isVisible: true,
                ),
                primaryXAxis: CategoryAxis(
                  title: AxisTitle(text: 'Sales'),
                ),
                primaryYAxis: NumericAxis(
                  title: AxisTitle(text: 'Month'),
                ),
                series: <BarSeries<ChartData1, String>>[
                  BarSeries<ChartData1, String>(
                    dataSource: data1,
                    xValueMapper: (ChartData1 data, _) => data.year,
                    yValueMapper: (ChartData1 data, _) => data.sales,
                    name: 'sales',
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                  )
                ],
              ),
              SizedBox(
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SfCartesianChart(
                    backgroundColor: Colors.white,
                    title: ChartTitle(
                        text: 'ColumnChart',
                        textStyle: TextStyle(fontSize: 20),
                        alignment: ChartAlignment.near,
                        borderColor: Colors.black),
                    legend: Legend(
                        isVisible: true,
                        backgroundColor: Colors.white,
                        position: LegendPosition.bottom,
                        alignment: ChartAlignment.near,
                        orientation: LegendItemOrientation.vertical,
                        height: '100%'),
                    primaryXAxis: CategoryAxis(
                      title: AxisTitle(text: ''),
                      majorGridLines: MajorGridLines(width: 0),
                    ),
                    primaryYAxis: NumericAxis(
                      title: AxisTitle(text: ''),
                      minimum: 0,
                      maximum: 50,
                      interval: 10,
                      // plotBands: [
                      //   PlotBand(
                      //       isVisible: true,
                      //       start: average1,
                      //       end: average1,
                      //       borderColor: Colors.pinkAccent,
                      //       dashArray: [8, 8])
                      // ],
                    ),
                    series: [
                      ColumnSeries<ChartData2, String>(
                        dataSource: data2,
                        xValueMapper: (ChartData2 data, _) => data.date,
                        yValueMapper: (ChartData2 data, _) => data.score,
                        name: 'Score1',
                        color: Colors.grey.shade300,
                        width: 0.6,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        dataLabelSettings: DataLabelSettings(isVisible: false),
                      ),
                      ColumnSeries<ChartData2, String>(
                        dataSource: data3,
                        xValueMapper: (ChartData2 data, _) => data.date,
                        yValueMapper: (ChartData2 data, _) => data.score,
                        name: 'Score2',
                        color: Colors.grey.shade600,
                        width: 0.6,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        dataLabelSettings: DataLabelSettings(isVisible: false),
                      ),
                      LineSeries<ChartData2, String>(
                        dataSource: [
                          ChartData2('09.01', average1.toDouble()),
                          ChartData2('09.04', average1.toDouble()),
                        ],
                        xValueMapper: (ChartData2 data, _) => data.date,
                        yValueMapper: (ChartData2 data, _) => data.score,
                        name: 'Score1의 평균',
                        color: Colors.pinkAccent,
                        dashArray: [8, 8],
                        legendIconType: LegendIconType.horizontalLine,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData1 {
  ChartData1(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartData2 {
  ChartData2(this.date, this.score);

  final String date;
  final double score;
}
