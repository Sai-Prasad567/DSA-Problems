class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var chars = Array(s)
        let n = chars.count

        var i = 0
        while i < n {
            var end = min(i + k - 1, n - 1)
            var start = i
            while start < end {
                chars.swapAt(start, end)
                start += 1
                end -= 1
            }
            i += 2 * k
        }
        return String(chars)
    }
}