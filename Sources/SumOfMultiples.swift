//Solution goes in Sources
import Foundation
class SumOfMultiples {
    
    class func toLimit(_ limit: Int, inMultiples:[Int]) -> Int {
        var result = [0]
        for i in (1..<limit) {
            for (_, value) in inMultiples.enumerated() {
                if (value != 0) && (i % value == 0) {
                    result += [i]
                }
            }
        }
        let finalResult = Array(Set(result))
        return finalResult.reduce(0, +)
    }
}

