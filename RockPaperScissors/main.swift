import Foundation

enum Chooses : String{
    case paper
    case rock
    case scissor
}

func isItStart(){
    print("Press Y for start")
    let start = readLine()
    if start == "Y" || start == "y"{
        print("Game is starting...")
        game()
    }else{
        print("Why are you here then?")
    }
}

func choice() -> String{
    print("Select your choice:\n1.Paper\n2.Rock\n3.Scissor")
    let yourChoice = readLine()
    print("Your Choice : \(yourChoice!)")
    return yourChoice!
}

func getRandomChoice() -> String{
    let choice : [Chooses] = [.paper,.rock,.scissor]
    let randomIndex = Int.random(in: 0..<choice.count)
    let randomValue = choice[randomIndex]
    print("My Choice : \(randomValue.rawValue)")
    return randomValue.rawValue
}

func gameStatus() -> String{
    let myChoice = choice()
    let randomChoice = getRandomChoice()
    
    if (myChoice == "rock" && randomChoice == "scissor") ||
        (myChoice == "paper" && randomChoice == "rock") ||
        (myChoice == "scissor" && randomChoice == "paper") {
        print("You won!")
        return "win"
    }else if myChoice == randomChoice{
        print("Did you read my mind?!")
        return "draw"
    }else{
        print("I won!")
        return "lose"
    }
}


func game(){
    var score : Int = 0
    
    for _ in 1...3{
        let statu = gameStatus()
        if statu == "win"{
            score += 1
        }
        print(score)
    }
    if score >= 2 {
        print("You were just lucky :( ")
    }else{
        print("Try again ;) ")
    }
}

isItStart()
