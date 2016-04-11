//: Playground - noun: a place where people can play

import Foundation
import GameKit

var joeSmith = ["name": "Joe Smith", "height": 42, "experience": true, "guardin": "Jim & Jan Smith"]
var jillTanner = ["name": "Jill Tanner", "height": 36, "experience": true, "guardin": "Clara Tanner"]
var billBon = ["name": "Bill Bon", "height": 43, "experience": true, "guardin": "Sara & Jenny Bon"]
var evaGordon = ["name": "Eva Gordon", "height": 43, "experience": false, "guardin": "Wendy and Mike Gordon"]
var mattGill = ["name": "Matt Gill", "height": 40, "experience": false, "guardin": "Charles & Sylvia Gill"]
var kimmyStein = ["name": "Kimmy Stein", "height": 41, "experience": false, "guardin": "Bill & Hillary Stein"]
var sammyAdams = ["name": "Sammy Adams", "height": 45, "experience": false, "guardin": "Jeff Adams"]
var karlSaygan = ["name": "Karl Saygan", "height": 42, "experience": true, "guardin": "Heather Bledsoe"]
var suzaneGreenberg = ["name": "Suzane Greenberg", "height": 44, "experience": true, "guardin": "Wendy and Mike Gordon"]
var salDali = ["name": "Sal Dali", "height": 41, "experience": false, "guardin": "Wendy and Mike Gordon"]
var joeKavalier = ["name": "Joe Kavalier", "height": 39, "experience": false, "guardin": "Wendy and Mike Gordon"]
var benFinkelstein = ["name": "Ben Finkelstein", "height": 44, "experience": false, "guardin": "Wendy and Mike Gordon"]
var diegoSoto = ["name": "Diego Soto", "height": 41, "experience": true, "guardin": "Wendy and Mike Gordon"]
var chloeAlaska = ["name": "Chloe Alaska", "height": 47, "experience": false, "guardin": "Wendy and Mike Gordon"]
var arnoldWillis = ["name": "Arnold Willis", "height": 43, "experience": false, "guardin": "Wendy and Mike Gordon"]
var phillipHelm = ["name": "Phillip Helm", "height": 44, "experience": true, "guardin": "Wendy and Mike Gordon"]
var lesClay = ["name": "Les Clay", "height": 42, "experience": true, "guardin": "Wendy and Mike Gordon"]
var herschelKrustofski = ["name": "Herschel Krustofski", "height": 45, "experience": true, "guardin": "Wendy and Mike Gordon"]

var soccerLeague = [joeSmith, jillTanner, billBon, evaGordon,mattGill,kimmyStein,sammyAdams,karlSaygan,suzaneGreenberg,salDali,joeKavalier,benFinkelstein,diegoSoto,chloeAlaska,arnoldWillis,phillipHelm,lesClay,herschelKrustofski]

var dragons = [[String:AnyObject]]()
var sharks = [[String:AnyObject]]()
var raptors = [[String:AnyObject]]()

var teams = [dragons,sharks,raptors]
var rookieList = [[String:AnyObject]]()
var proList = [[String:AnyObject]]()
var numberOfPlayersPerTeam = soccerLeague.count / teams.count

func creatTeams() {
    
    for player in soccerLeague {
        
        //sort rookies & pro players
        if player["experience"] == 0 {
            rookieList.append(player)
        } else {
            proList.append(player)
        }
    }
    
    for player in rookieList {
        
        //Add rookies to each team
        if dragons.count < numberOfPlayersPerTeam / 2 {
            dragons.append(player)
        } else if sharks.count < numberOfPlayersPerTeam / 2  {
            sharks.append(player)
        } else if raptors.count < numberOfPlayersPerTeam / 2  {
            raptors.append(player)
        }
    }
    
    for player in proList {
        //Add pros to each team
        if dragons.count < numberOfPlayersPerTeam  {
            dragons.append(player)
        } else if sharks.count < numberOfPlayersPerTeam  {
            sharks.append(player)
        } else if raptors.count < numberOfPlayersPerTeam  {
            raptors.append(player)
        }
    }
    
    
}

func printTeamLetters() {
    print("*****Team Dragons*****")
    for players in dragons {
        print("Dear \(players["name"]!), \n \(players["guardin"]!) has been selected for the Dragon Team! The Dragons first pratice is on March 17, at 1pm! Please let us know if you have any questions or concerns. \n -League Staff \n")
    }
    
    print("*****Team Sharks*****")
    for players in sharks {
        print("Dear \(players["name"]!), \n \(players["guardin"]!) has been selected for the Shark Team! The Sharks first pratice is on March 17, 3pm! Please let us know if you have any questions or concerns. \n -League Staff \n")
    }
    
    print("*****Team Raptors*****")
    for players in raptors {
        print("Dear \(players["name"]!), \n \(players["guardin"]!) has been selected for the Raptor Team! The Raptors first pratice is on March 18, at 1pm! Please let us know if you have any questions or concerns. \n -League Staff \n")
    }
    
}

creatTeams()
printTeamLetters()

