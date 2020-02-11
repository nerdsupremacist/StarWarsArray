import XCTest
@testable import StarWarsArray

final class StarWarsArrayTests: XCTestCase {
    private enum Movies: Int, CaseIterable {
        case newHope = 4
        case empire
        case jedi
        case phantomMenace = 1
        case cloneWars
        case revengeOfTheSith
        case forceAwakens = 7
        case lastJedi
        case riseOfSkywalker
    }

    func testSubscript() {
        let array = StarWarsArray(Movies.allCases)

        Movies.allCases.forEach {
            XCTAssertEqual(array[$0.rawValue], $0)
        }
    }

    static var allTests = [
        ("testSubscript", testSubscript),
    ]
}
