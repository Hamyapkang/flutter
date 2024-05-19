import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGaugeWidget extends StatelessWidget {
  const RadialGaugeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;
    return SfRadialGauge(
      title: GaugeTitle(
        text: 'Steam Pressure',
        textStyle: TextStyle(
          fontSize: 20,
          color: Colors.grey
        )
      ),

      axes: <RadialAxis>[
        RadialAxis(
          startAngle: 180,
          endAngle: 0,
          showLabels: false,
          interval: 50,
          radiusFactor: 0.8,
          axisLineStyle: AxisLineStyle(
              thickness: 0.3,
              thicknessUnit: GaugeSizeUnit.factor,
              color: Colors.grey[300]
          ),
          pointers: <GaugePointer>[
            RangePointer(
              color: Colors.green,
              width: 20,
              value: 34.19,
            ),
            MarkerPointer(
              value: 30,
              enableDragging: true,
              enableAnimation: true,
              markerWidth: 15,
              markerOffset: -15,
              color: Colors.grey[300],
            )
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              angle: 90,
              positionFactor: 0.5,
              widget: Text.rich(
                TextSpan(
                  text: '34.19',
                  style: TextStyle(
                      fontSize: currentWidth*0.058,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: 'bar',
                      style: TextStyle(
                        fontSize: currentWidth*0.036,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}