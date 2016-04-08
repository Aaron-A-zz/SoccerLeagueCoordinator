//: Playground - noun: a place where people can play

import Cocoa

enum Experience {
    case Rookie
    case Pro
}

//Player Class to store players info
class Player {
    
    let name: String
    let height: Int
    let guardianName: String
    let experience: Experience
    var discription: String {
        return "name: \(name) height: \(height) guardian:\(guardianName)"
    }
    
    init(name: String, height: Int, experience: Experience, guardinaName: String) {
        
        self.name = name
        self.height = height
        self.experience = experience
        self.guardianName = guardinaName
    }
}

var JoeSmith = Player(name: "Joe Smith", height: 42, experience: .Pro, guardinaName: "Jim & Jan Smith")
var jillTanner = Player(name: "Jill Tanner", height: 36, experience: .Pro, guardinaName: "Clara Tanner")
var billBon = Player(name: "Bill Bon", height: 43, experience: .Pro, guardinaName: "Sara & Jenny Bon")
var evaGordon = Player(name: "Eva Gordon", height: 43, experience: .Rookie, guardinaName: "Wendy and Mike Gordon")
var mattGill = Player(name: "Matt Gill", height: 40, experience: .Rookie, guardinaName: "Charles & Sylvia Gill")
var kimmyStein = Player(name: "Kimmy Stein", height: 41, experience: .Rookie, guardinaName: "Bill & Hillary Stein")

var sammyAdams = Player(name: "Sammy Adams", height: 45, experience: .Rookie, guardinaName: "Jeff Adams")
var karlSaygan = Player(name: "Karl Saygan", height: 42, experience: .Pro, guardinaName: "Heather Bledsoe")
var suzaneGreenberg = Player(name: "Suzane Greenberg", height: 44, experience: .Pro, guardinaName: "Henrietta Dumas")
var salDali = Player(name: "Sal Dali", height: 41, experience: .Rookie, guardinaName: "Gala Dali")
var joeKavalier = Player(name: "Joe Kavalier", height: 39, experience: .Rookie, guardinaName: "Sam & Elaine Kavalier")
var benFinkelstein = Player(name: "Ben Finkelstein", height: 44, experience: .Rookie, guardinaName: "Aaron & Jill Finkelstein")

var diegoSoto = Player(name: "Diego Soto", height: 41, experience: .Pro, guardinaName: "Robin & Sarika Soto")
var chloeAlaska = Player(name: "Chloe Alaska", height: 47, experience: .Rookie, guardinaName: "David & Jamie Alaska")
var arnoldWillis = Player(name: "Arnold Willis", height: 43, experience: .Rookie, guardinaName: "Claire Willis")
var phillipHelm = Player(name: "Phillip Helm", height: 44, experience: .Pro, guardinaName: "Thomas Helm & Eva Jones")
var lesClay = Player(name: "Les Clay", height: 42, experience: .Pro, guardinaName: "Wynonna Brown")
var herschelKrustofski = Player(name: "Herschel Krustofski", height: 45, experience: .Pro, guardinaName: "Hyman & Rachel Krustofski")



var soccerLeague = [JoeSmith, jillTanner, billBon, evaGordon,mattGill,kimmyStein,sammyAdams,karlSaygan,suzaneGreenberg,salDali,joeKavalier,benFinkelstein,diegoSoto,chloeAlaska,arnoldWillis,phillipHelm,lesClay,herschelKrustofski]
var playersPerTeam = soccerLeague.count / 3

var heightTotal = 0

for player in soccerLeague {
    heightTotal += player.height
}

var averageHeight = heightTotal / soccerLeague.count
var dragons: [Player] = []
var sharks: [Player] = []
var raptors: [Player] = []
var playersAlreadyAdded: [Player] = []
var proPlayers = [Player]()
var rookiePlayers = [Player]()

func createTeam(team: [Player]) -> ([Player],[Player],[Player]) {
    
    // Step one: sort the league Pros from the scrubs.
    // A  better way of sorting the league would be...let proPlayers = soccerLeague.filter { $0.experience == .Pro }
    for players in soccerLeague {
        if players.experience == .Pro {
            proPlayers.append(players)
        }
    }
    proPlayers.count
    
    //Step two: Find the scrubs
    //let rookiePlayers = soccerLeague.filter { $0.experience == .Rookie }
    
    for players in soccerLeague {
        if players.experience == .Rookie {
            rookiePlayers.append(players)
        }
    }
    rookiePlayers.count
    
    // Step 3: Add three pro players to each team
    //proPlayers
    for players in proPlayers {
        var playerIsNew = true
        
        for otherPlayer in playersAlreadyAdded {
            if players.name == otherPlayer.name {
                playerIsNew = false
                break
            }
        }
        
        if playerIsNew == true {
            if dragons.count < 3 {
                playersAlreadyAdded.append(players)
                dragons.append(players)
                
            } else if sharks.count < 3 {
                playersAlreadyAdded.append(players)
                sharks.append(players)
                
            } else if raptors.count < 3 {
                playersAlreadyAdded.append(players)
                raptors.append(players)
            }
        }
    }
    
    
    //Step 4: Add three rookie players to each team
    //rookiePlayers
    for players in rookiePlayers {
        var playerIsNew = true
        
        for otherPlayer in playersAlreadyAdded {
            if players.name == otherPlayer.name {
                playerIsNew = false
                break
            }
        }
        
        if playerIsNew == true {
            if dragons.count < 6 {
                playersAlreadyAdded.append(players)
                dragons.append(players)
                
            } else if sharks.count < 6 {
                playersAlreadyAdded.append(players)
                sharks.append(players)
                
            } else if raptors.count < 6 {
                playersAlreadyAdded.append(players)
                raptors.append(players)
            }
        }
    }
    
    //Step 5: Print out the welcome letters!
    print("******DRAGONS*******")
    for players in dragons {
        print("Dear \(players.guardianName), \n \(players.name) has been selected for the Dragon Team! The Dragons first pratice is on March 17, at 1pm! Please let us know if you have any questions or concerns. \n -League Staff \n")
    }
    print("\n")
    print("******SHARKS*******")
    for players in sharks {
        print("Dear \(players.guardianName), \n \(players.name) has been selected for the Shark Team! The Sharks first pratice is on March 17, 3pm! Please let us know if you have any questions or concerns. \n -League Staff \n")
    }
    print("\n")
    print("******RAPTORS*******")
    for players in raptors {
        print("Dear \(players.guardianName), \n \(players.name) has been selected for the Raptor Team! The Raptors first pratice is on March 18, at 1pm! Please let us know if you have any questions or concerns. \n -League Staff \n")
    }
    
    return (dragons, sharks, raptors)
}


createTeam(soccerLeague)
