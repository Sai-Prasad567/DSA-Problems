class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var arr = nums.sorted()
    var sum = arr[0] + arr[1] + arr[2]
    for i in 0..<arr.count {
        var j = i + 1
        var k = arr.count-1
        while j < k {
            let cSum = arr[i] + arr[j] + arr[k]
            if cSum == target {
                return cSum
            }
            if abs(cSum - target) < abs(sum - target) {
                sum = cSum
            }
            if cSum < target {
                j += 1
            }
            else {
                k -= 1
            }
        }
    }
    return sum
    }
}