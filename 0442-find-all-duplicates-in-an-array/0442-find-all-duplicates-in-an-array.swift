class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        if nums.isEmpty{
            return []
        }

        var numbers = nums
        var dupArray : [Int] = []

        for i in 0..<numbers.count{
            let absNumber = abs(numbers[i])

            if numbers[absNumber - 1] < 0{
                dupArray.append(absNumber)
            }

            numbers[absNumber - 1] *= -1
        }

        return dupArray
    }
}