func twoCitySchedCost(_ costs: [[Int]]) -> Int {
    let half = costs.count / 2
    var costDiff = costs.sorted { (v1, v2) -> Bool in
        let diff1 = abs(v1[0] - v1[1])
        let diff2 = abs(v2[0] - v2[1])
        return diff1 > diff2
    }

    var cityACount = 0
    var cityBCount = 0

    var sum = 0
    for entry in costDiff {
        if entry[0] < entry[1] {
            if cityACount < half {
                cityACount += 1
                sum += entry[0]
            } else {
                cityBCount +=  1
                sum += entry[1]
            }

        } else {
            if cityBCount < half {
                cityBCount += 1
                sum += entry[1]
            } else {
                cityACount += 1
                sum += entry[0]
            }
        }
    }

    return sum
}
