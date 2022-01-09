let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Take the long way first
// Filter out all even numbers

let filtered = luckyNumbers.filter({ !$0.isMultiple(of: 2) })
print(filtered)

//sort ascending
let sorted = filtered.sorted()

print(sorted)

// map
let mapped = sorted.map({ "\($0) is a lucky number" })

print(mapped)

let result = luckyNumbers.filter({ !$0.isMultiple(of: 2) } ).sorted(by: { $0 < $1 } ).map({ "\($0) is a lucky number" })

for lucky in result {
    print(lucky)
}
