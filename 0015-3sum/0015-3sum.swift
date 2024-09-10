class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var arr = Set<[Int]>()
    let nums = nums.sorted()
    for i in 0..<nums.count {
        if i > 0 && nums[i] == nums[i-1] {
            continue
        }
        var j = i+1
        var k = nums.count-1
        while j < k {
            
            let sum = nums[i] + nums[j] + nums[k]
            if sum == 0 {
                arr.insert([nums[i], nums[j], nums[k]])
                j += 1
                k -= 1
            }
            else if sum < 0{
                j += 1
            }
            else {
                k -= 1
            }
        }
    }
    return Array(arr)
    }
}