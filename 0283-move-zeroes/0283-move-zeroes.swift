class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.count <= 1{
            return
        }

        for i in 0..<nums.count{
            if nums[i] == 0{
                var j = i
                var flag = true
                while j < nums.count && flag{
                    if nums[j] != 0{
                        nums.swapAt(i,j)
                        flag = false
                    }
                    j += 1
                }
            }
        }
    }
}