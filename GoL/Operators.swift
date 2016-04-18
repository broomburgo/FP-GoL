infix operator |> { associativity left precedence 90 }

func |> <A, B> (lhs: A, rhs: A -> B) -> B {
  return rhs(lhs)
}

func |> <A, B, C> (lhs: A -> B, rhs: B -> C) -> A -> C {
  return { rhs(lhs($0)) }
}

infix operator <| { associativity right precedence 85 }

func <| <A, B> (lhs: A -> B, rhs: A) -> B {
  return lhs(rhs)
}

infix operator <^> { associativity left precedence 90 }
func <^> <A, B> (lhs: A -> B, rhs: [A]) -> [B] {
  return rhs.map(lhs)
}
