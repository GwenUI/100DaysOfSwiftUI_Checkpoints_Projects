let fizz = 3
let buzz = 5

for i in 1...100 {
    if i.isMultiple(of: fizz) && i.isMultiple(of: buzz) {
        print("FizzBuzz")
    } else if i.isMultiple(of: fizz) {
        print("Fizz")
    } else if i.isMultiple(of: buzz) {
        print("Buzz")
    } else {
        print(i)
    }
}
