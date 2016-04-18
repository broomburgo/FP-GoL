func setAlive(aliveCoord: Coordinate) -> World -> World {
  return { getCell in
    return { coord in
      if coord == aliveCoord {
        return Cell(alive: true)
      }
      else {
        return getCell(coord)
      }
    }
  }
}

extension Bool {
  func match<T>(@autoclosure ifTrue ifTrue: () -> T, @autoclosure ifFalse: () -> T) -> T {
    if self {
      return ifTrue()
    }
    else {
      return ifFalse()
    }
  }
}

let emptyWorld: World = { _ in Cell(alive: false) }
