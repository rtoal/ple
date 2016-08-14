package main

import (
	"sync"
	"time"
)

func Customer(name string, wg *sync.WaitGroup) {
	defer wg.Done()
	ch := make(chan *Order)
	for mealsEaten := 0; mealsEaten < 10; {
		select {
		case Orders <- &Order{food: "soup", customer: name, reply: ch}:
			meal := <-ch
			do(name, "eating " + meal.food + " prepeared by " +
				meal.preparedBy, 10E9)
			mealsEaten += 1
		case <-time.After(time.Second * 7):
			do(name, "waiting too long, going shopping", 5E9)
		}
	}
	report(name, "going home")
}
