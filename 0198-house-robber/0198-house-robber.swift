class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return nums.max()!
        }

        var maxMoney = Array(repeating:0,count:nums.count)

        maxMoney[0] = nums[0]
        maxMoney[1] = max(nums[0],nums[1])

        for i in 2..<nums.count{
            maxMoney[i] = max(nums[i] + maxMoney[i-2],maxMoney[i-1])
        }

        return maxMoney.last!
    }
}