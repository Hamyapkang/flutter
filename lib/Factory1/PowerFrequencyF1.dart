import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PowerFrequencyF1 extends StatelessWidget {
  const PowerFrequencyF1({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;
    return Container(
        width: currentWidth*0.4,
        height: currentHeight*0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SfRadialGauge(
          enableLoadingAnimation: true,
          animationDuration: 4000,
          title: GaugeTitle(
            text: 'Power Frequency',
            textStyle: TextStyle(
                fontSize: currentWidth*0.048,
                color: Colors.grey[700]
            ),
          ),
          axes: [
            RadialAxis(
              startAngle: 180,
              endAngle: 0,
              interval: 50,
              axisLineStyle: AxisLineStyle(
                  thickness: 0.3,
                  thicknessUnit: GaugeSizeUnit.factor,
                  color: Colors.grey[300]
              ),
              showLabels: false,
              pointers: [
                MarkerPointer(
                  value: 50,
                  enableDragging: true,
                  enableAnimation: true,
                  markerWidth: 15,
                  markerOffset: -15,
                  color: Colors.grey[300],
                ),
                RangePointer(
                  value: 0,
                  width: currentWidth*0.045,
                  color: Colors.green,
                ),
              ],
              annotations: [
                GaugeAnnotation(
                  angle: 90,
                  positionFactor: 0.5,
                  widget: Text.rich(
                    TextSpan(
                      text: '0.0',
                      style: TextStyle(
                          fontSize: currentWidth*0.058,
                          fontWeight: FontWeight.bold
                      ),
                      children: [
                        TextSpan(
                          text: 'Hz',
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
        )
    );
  }
}