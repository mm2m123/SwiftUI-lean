import UIKit

var str = "Hello, playground"
print(str)
func addNumber(num: Int) -> Int {
    return num + 1
}

print(addNumber(num: 1))

func addTo(_ adder: Int) -> (Int) -> Int {
    return {
        num in
        return num + adder
    }
}

let addTwo = addTo(2)

let result = addTwo(6)

//let result2 = result(5)


func twoSum(nums: [Int], _ target: Int) -> Bool {
    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target - num) {
            return true
        }
        set.insert(num)
    }
    
    return false
}

twoSum(nums: [1,2,3,4,5,6,7,8,9], 100)

