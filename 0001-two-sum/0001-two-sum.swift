class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var someInts: [Int] = []
        for i in 0..<nums.count{
            for j in i+1..<nums.count{
                if nums[i] + nums[j] == target{
                    someInts.append(i)
                    someInts.append(j)
                    return someInts
                    
                }
            }
        }
        return []
    }
}