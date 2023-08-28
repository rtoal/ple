type Widget = {
  id: string
  name?: string
  price?: number
  status: "soldOut" | "inStock" | "discontinued"
}

let ex01: Widget
let ex02: keyof Widget // "id" | "name" | "price" | "status"
let ex03: typeof ex01 // Widget

let ex04: Widget["id" | "price"] // string | number
let ex05: Widget["name"] // string | undefined
let ex06: Widget["status"] // "soldOut" | "inStock" | "discontinued"

let ex07: Partial<Widget> // all properties optional
let ex08: Required<Widget> // all properties required
let ex09: Readonly<Widget> // all properties readonly
let ex10: Pick<Widget, "id" | "name"> // only id and name props
let ex11: Omit<Widget, "id" | "name"> // all props except id and name
let ex12: Exclude<"a" | "b" | "c", "a"> // "b" | "c"
let ex13: Extract<"a" | "b" | "c", "a" | "b"> // "a" | "b"

function f1(w: Widget, factor: number): number {
  return (w.price ?? 0) * factor
}

let ex14: Parameters<typeof f1> // [Widget, number]
let ex15: ReturnType<typeof f1> // number
