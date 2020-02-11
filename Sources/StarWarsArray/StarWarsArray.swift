
import Foundation

public struct StarWarsArray<Element> {
    public enum Mode {
        case regular
        case whatPrequels
    }

    private let array: [Element]
    private let mode: Mode

    private func arrayIndex(for index: Int) -> Int {
        switch (index, mode) {
        case (..<1, _):
            fatalError("There is no 0 or negative Star Wars Episodes")
        case (4...6, _):
            return index - 4
        case (1...3, .regular):
            return index + 2
        case (1...3, .whatPrequels):
            fatalError("I don't recall any prequels?!?!")
        default:
            return index - 1
        }
    }

    public init<S : Sequence>(_ sequence: S, mode: Mode = .regular) where S.Element == Element {
        self.array = Array(sequence)
        self.mode = mode
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
