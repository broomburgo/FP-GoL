import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    let coords: [Coordinate] = [
      [-2, 2],
      [-1, 2],
      [0, 2],
      [1, 2],
      [2, 2],
      [-2, 1],
      [-1, 1],
      [0, 1],
      [1, 1],
      [2, 1],
      [-2, 0],
      [-1, 0],
      [0, 0],
      [1, 0],
      [2, 0],
      [-2, -1],
      [-1, -1],
      [0, -1],
      [1, -1],
      [2, -1],
      [-2, -2],
      [-1, -2],
      [0, -2],
      [1, -2],
      [2, -2]
    ]

    let initialWorld = emptyWorld
      |> setAlive([-1, 0])
      |> setAlive([0, 0])
      |> setAlive([1, 0])
      |> setAlive([-1, 1])
      |> setAlive([0, 1])

    let cells0 = initialWorld <^> coords
    let cells1 = initialWorld |> tick(coords) <^> coords
    let cells2 = initialWorld |> tick(coords) |> tick(coords) <^> coords
    let cells3 = initialWorld |> tick(coords) |> tick(coords) |> tick(coords) <^> coords
    let cells4 = initialWorld |> tick(coords) |> tick(coords) |> tick(coords) |> tick(coords) <^> coords

    print(cells0[0...4])
    print(cells0[5...9])
    print(cells0[10...14])
    print(cells0[15...19])
    print(cells0[20...24])
    print()
    print(cells1[0...4])
    print(cells1[5...9])
    print(cells1[10...14])
    print(cells1[15...19])
    print(cells1[20...24])
    print()
    print(cells2[0...4])
    print(cells2[5...9])
    print(cells2[10...14])
    print(cells2[15...19])
    print(cells2[20...24])
    print()
    print(cells3[0...4])
    print(cells3[5...9])
    print(cells3[10...14])
    print(cells3[15...19])
    print(cells3[20...24])
    print()
    print(cells4[0...4])
    print(cells4[5...9])
    print(cells4[10...14])
    print(cells4[15...19])
    print(cells4[20...24])
  }
}
