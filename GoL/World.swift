typealias World = Coordinate -> Cell

func getNeighbours(c: Coordinate) -> [Coordinate] {
  return [
    [c.x-1, c.y+1],
    [c.x,   c.y+1],
    [c.x+1, c.y+1],
    [c.x+1, c.y],
    [c.x+1, c.y-1],
    [c.x,   c.y-1],
    [c.x-1, c.y-1],
    [c.x-1, c.y]
  ]
}

func getAlive(world: World) -> [Coordinate] -> Int {
  return {
    $0.map(world)
      .filter { $0.alive }
      .count
  }
}

func cellRule(aliveNeighbours: Int) -> Cell -> Cell {
  return { $0.alive.match(
    ifTrue: Cell(alive: aliveNeighbours == 2 || aliveNeighbours == 3),
    ifFalse: Cell(alive: aliveNeighbours == 3))
  }
}

func tick(coords: [Coordinate]) -> World -> World {
  return { getCell in
    return { coord in
      return coord |> getNeighbours |> getAlive(getCell) |> cellRule <| getCell(coord)
    }
  }
}
