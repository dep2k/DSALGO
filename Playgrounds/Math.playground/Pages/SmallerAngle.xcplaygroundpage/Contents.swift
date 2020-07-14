func angleClock(_ hour: Int, _ minutes: Int) -> Double {
     let minuteAngle = minutes * 6
     let hourAngle = Double(hour * 30) +  Double(30) * (Double(minutes) / 60.0)
     let angle  = abs(Double(minuteAngle) - hourAngle)
     if angle <= 180.0 {
         return angle
     } else {
         return 360.0 - angle
     }
 }
