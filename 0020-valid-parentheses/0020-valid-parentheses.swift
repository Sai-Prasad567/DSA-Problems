class Solution {
    func isValid(_ s: String) -> Bool {
        let dict : [Character:Character] = [")":"(","]":"[","}":"{"]
        var stack : [Character] = []

        for char in s{
            if let op = dict[char]{
                if stack.isEmpty || op != stack.last{
                    return false
                }
                stack.removeLast()
            }
            else{
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}