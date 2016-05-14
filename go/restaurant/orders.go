package main

type Order struct {
    food string
    customer string
    reply chan *Order
    preparedBy string
}

var Orders = make(chan *Order, 5)
