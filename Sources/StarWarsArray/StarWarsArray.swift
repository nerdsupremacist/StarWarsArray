
import Foundation

public struct StarWarsArray<Element> {
    private let array: [Element]

    private func arrayIndex(for index: Int) -> Int {
        switch index {
        case ..<1:
            fatalError("There is no 0 or negative Star Wars Episodes")
        case 4...6:
            return index - 4
        case 1...3:
            return index + 2
        default:
            return index - 1
        }
    }

    public init<S : Sequence>(_ sequence: S) where S.Element == Element {
        self.array = Array(sequence)
    }

    public subscript(index: Int) -> Element {
        return array[arrayIndex(for: index)]
    }
}

extension StarWarsArray: Sequence {

    public __consuming func makeIterator() -> Array<Element>.Iterator {
        return array.makeIterator()
    }

}

extension StarWarsArray: ExpressibleByArrayLiteral {

    public init(arrayLiteral elements: Element...) {
        self = StarWarsArray(elements)
    }

}
