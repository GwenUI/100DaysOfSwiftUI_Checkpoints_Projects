import Foundation

extension String.StringInterpolation {
    
    mutating func appendInterpolation(format value: Double, _ maxFractionDigits: Int = 2) {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = maxFractionDigits
        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
}

let celsius = 20.5
let fahrenheit = celsius * 9 / 5 + 32
let result = "\(format: celsius) °C = \(format: fahrenheit) F"
print(result)

let fahrenheit2 = fahrenheit
let celsius2 = (fahrenheit2 - 32) / 9 * 5

let result2 = "\(format: fahrenheit2) F = \(format: celsius2) °C"
print(result2)
