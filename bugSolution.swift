let array = [1, 2, 3]
let index = 4
if index < array.count {
    print(array[index])
} else {
    print("Index out of bounds")
}

// Alternative using optional binding for concise error handling:
let safeValue = array[safe: index]
print(safeValue ?? "Index out of bounds")

//Extension to handle safe array access
 extension Array {
    subscript (safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
} 