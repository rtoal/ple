package main

func Cook(name string) {
	report(name, "starting work")
	for {
		order := <-Orders
        do(name, "cooking for " + order.customer, 12E9)
        order.preparedBy = name
        order.reply <- order
	}
}
