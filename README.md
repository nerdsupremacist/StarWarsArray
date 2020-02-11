# StarWarsArray
A sequence index like Star Wars Movies.

Extremely useful when you need to handle, well... Star Wars Movies ¯\\_(ツ)_/¯ 

## Installation
### Swift Package Manager

You can install `StarWarsArray` via [Swift Package Manager](https://swift.org/package-manager/) by adding the following line to your `Package.swift`:

```swift
import PackageDescription

let package = Package(
    [...]
    dependencies: [
        .package(url: "https://github.com/nerdsupremacist/StarWarsArray.git", .upToNextMajor(from: "0.1.0"))
    ]
)
```

## Usage

Well you can just instantiate it and load data with the correct indices:

```swift
enum Movies: Int, CaseIterable {
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

let array = StawWarsArray(Movies.allCases)
print(array[4]) // -> newHope
```

`StawWarsArray` can also be initialized from a literal:

```swift
let array: StarWarsArray = ["A New Hope", "Empire Strikes Back"]
print(array[5]) // -> Empire Strikes Back
```

## Contributions
Contributions are welcome and encouraged!

## License
Runtime is available under the MIT license. See the LICENSE file for more info.
