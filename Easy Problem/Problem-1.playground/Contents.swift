import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var dict: [Int: Int] = [:]

    for (i, num) in nums.enumerated() {
        let complement = target - num
        if let index = dict[complement] {
            return [index, i]
        }
        dict[num] = i
    }
    return []
}

//Example 1:
let inputq1: [Int] = [2,7,11,15]
let target1: Int = 9
//Example 2:
let inputq2: [Int] = [3,2,4]
let target2: Int = 6
//Example 3:
let inputq3: [Int] = [3,3]
let target3: Int = 6


let exampleOutput1 = twoSum(inputq1, target1)
print("here is the indices of the two sum \(exampleOutput1)")

let exampleOutput3 = twoSum(inputq3, target3)
print("here is the indices of the two sum \(exampleOutput3)")

let exampleOutput2 = twoSum(inputq2, target2)
print("here is the indices of the two sum \(exampleOutput2)")
