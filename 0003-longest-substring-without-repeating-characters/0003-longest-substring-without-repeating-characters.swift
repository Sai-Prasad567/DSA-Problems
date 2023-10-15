class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0
    var charIndexMap: [Character: Int] = [:]
    
    var startIndex = 0 
    
    for (index, char) in s.enumerated() {
        if let charIndex = charIndexMap[char], charIndex >= startIndex {
            startIndex = charIndex + 1
        }
        charIndexMap[char] = index
        maxLength = max(maxLength, index - startIndex + 1)
    }
    
    return maxLength
    }
}