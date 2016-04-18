struct Cell {
  let alive: Bool
}

extension Cell: CustomStringConvertible {
  var description: String {
    return alive ? "X" : "•"
  }
}

struct Coordinate: Equatable {
  let x: Int
  let y: Int
  init(_ x: Int, _ y: Int) {
    self.x = x
    self.y = y
  }
}

func == (lhs: Coordinate, rhs: Coordinate) -> Bool {
  return lhs.x == rhs.x && lhs.y == rhs.y
}

extension Coordinate: ArrayLiteralConvertible {
  typealias Element = Int
  init(arrayLiteral elements: Int...) {
    precondition(elements.count == 2)
    self.init(elements[0], elements[1])
  }
}
