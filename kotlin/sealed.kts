
sealed class Animal {
    class Dog(val name: String) : Animal()
    class Cat(val name: String) : Animal()
    class Bird(val name: String) : Animal()
}


sealed class GameState {
    object NotStarted : GameState()
    object InProgress : GameState()
    object Completed : GameState()
}


fun handleGameState(state: GameState) {
    when (state) {
        is GameState.NotStarted -> // handle not started state
        is GameState.InProgress -> // handle in progress state
        is GameState.Completed -> // handle completed state
    }
}
