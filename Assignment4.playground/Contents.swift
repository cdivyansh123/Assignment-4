// import the UIKit framework
import UIKit

// create an array of strings
let array1 = ["b", "a", "d", "e","c"]

// create an array of integers
let array2 = [4, 3, 2, 5, 1]

// function that takes two arrays and a sorting function(callBack Function) as parameters, and returns an array of Any type
func mergedArray(array1: [String], array2: [Int], sortFunction: ([Int]) -> [Int]) -> [Any] {
    
    // sort array1 and concatenate it with the sorted array2
    return array1.sorted() + sortFunction(array2)
}

// call the mergedArray function with array1, array2, and a closure that sorts array2 in descending order
let output = mergedArray(array1: array1, array2: array2, sortFunction: { $0.sorted(by: >) })

// print the output
print(output)
