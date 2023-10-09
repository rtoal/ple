@file:DependsOn("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.7.1")
import kotlinx.coroutines.*

runBlocking {
    repeat(5) {
        launch {
            println("Coroutine $it running on ${Thread.currentThread().name}.")
            delay((1000L..5000L).random())
            println("Coroutine $it finished on ${Thread.currentThread().name}.")
        }
    }
    println("All coroutines launched")
}
