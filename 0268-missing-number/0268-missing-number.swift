class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var arr = Set(nums)
    
    for i in 0..<arr.count {
        if !arr.contains(i) {
            return i
        }
    }
    return nums.count
    }
}