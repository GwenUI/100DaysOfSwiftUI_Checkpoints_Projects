let min = 1
let maxRoot = 100
let max = 10000
var roots = [Int: Int]()
for i in min...maxRoot {
    roots[i * i] = i
}

enum RootError: Error {
    case notFound, outOfBounds
}

func root(of number: Int) throws -> Int {
    if number < min || number > max {
        throw RootError.outOfBounds
    }
    
    let root = roots[number, default: -1]
    if root == -1 {
        throw RootError.notFound
    }
    return root
}

let toTest = [1, 4, 5, 16, 0, 25, 144, 1000, 9999, 10000, 10001]

print(toTest)

for number in toTest {
    do {
        try print("root(\(number)) = \(root(of: number))")
    } catch RootError.notFound {
        print("not found")
    } catch RootError.outOfBounds {
        print("out of bounds [\(min), \(max)]")
    } catch {
        print("unknown error")
    }
    
}
