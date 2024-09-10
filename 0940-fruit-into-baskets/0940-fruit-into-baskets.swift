class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
        var dict = [Int:Int]()
    var maxFruits = 0
    var j = 0
    for i in 0..<fruits.count {
        dict[fruits[i], default: 0] += 1
        while dict.count > 2 {
            dict[fruits[j]]! -= 1
            if dict[fruits[j]] == 0 {
                dict.removeValue(forKey: fruits[j])
            }
            j += 1
        }
        maxFruits = max(maxFruits, i - j + 1)
    }
    return maxFruits
    }
}