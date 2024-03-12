//
//  DataProvider.swift
//  GOW
//
//  Created by Developer on 11/03/24.
//

import Foundation

class DataProvider {
    let menuOptions : [MenuOption] = [
        MenuOption(
            title:"menu.option.videogames",
            image:"gamecontroller.fill",
            segue:"gamesSegue")
        , MenuOption(
            title:"menu.option.weapons",
            image:"shield.fill",
            segue:"weaponsSegue")
        , MenuOption(
            title:"menu.option.characters",
            image:"person.crop.rectangle.stack.fill",
            segue:"charactersSegue")
        ,MenuOption(
            title:"menu.option.merchandise",
            image:"shippingbox.fill",
            segue:"merchandiseSegue")
    ]
    
    let cgoWeapons : [Weapon] = [
        Weapon(
            id: 1, name: "weapon.name.lancer",
            description: "weapon.description.lancer",
            poster: "Mark1LancerAssaultRifle"
            ),
        Weapon(
            id: 2, name: "weapon.name.lancer2",
            description: "weapon.description.lancer2",
            poster: "LancerMk2"
            ),
        Weapon(
            id: 3, name: "weapon.name.sniper",
            description: "weapon.description.sniper",
            poster: "LongshotSniperRifle"

            ),
        Weapon(
            id: 4, name: "weapon.name.hammer_of_dawn",
            description: "weapon.description.hammer_of_dawn",
            poster: "HammerOfDawn"
            ),
        Weapon(
            id: 5, name: "weapon.name.mx8",
            description: "weapon.description.mx8",
            poster: "SnubPistol"
        )
    ]
        
    //    Locust Weapons
    let locustWeapons : [Weapon] = [
            Weapon(
            id: 1, name: "weapon.name.boomshot",
            description: "weapon.description.boomshot",
            poster: "BoomshotGrenadeLauncher"
        ),
        Weapon(
            id: 2, name: "weapon.name.hammerburstii",
            description: "weapon.description.hammerburstii",
            poster: "HammerburstII"
        ),
        Weapon(
            id: 3, name: "weapon.name.mulcher",
            description: "weapon.description.mulcher",
            poster: "Mulcher"
        ),
        Weapon(
            id: 4, name: "weapon.name.bolo_grenade",
            description: "weapon.description.bolo_grenade",
            poster: "BoloGrenade"
        ),
        Weapon(
            id: 5, name: "weapon.name.boltok",
            description: "weapon.description.boltok",
            poster: "BoltokPistol"
        )
    ]
    
    let cogCharacters: [Character] = [
        Character(
            id: 1, name: "Adam Fenix",
            description: "character.description.adam_fenix",
            image: "AdamFenix"
        ),
        Character(
            id: 2, name: "Alicia Valera",
            description: "character.description.alicia_valera",
            image: "Val"
        ),
        Character(
            id: 2, name: "Anthony Carmine",
            description: "character.description.anthony_carmine",
            image: "AnthonyCarmine"
        ),
        Character(
            id: 2, name: "Anya Stroud",
            description: "character.description.anya_stroud",
            image: "Anya"
        ),
        Character(
            id: 2, name: "Augustus Cole",
            description: "character.description.cole",
            image: "Cole"
        ),
        Character(
            id: 2, name: "Benjamin Carmine",
            description: "character.description.benjamin_carmine",
            image: "BenjaminCarmine"
        ),
        Character(
            id: 2, name: "Bernadette Mataki",
            description: "character.description.bernie",
            image: "Bernie"
        ),
        Character(
            id: 2, name: "Richard Prescott",
            description: "character.description.prescott",
            image: "Prescott"
        ),
        Character(
            id: 2, name: "Clayton Carmine",
            description: "character.description.clayton_carmine",
            image: "ClaytonCarmine"
        ),
        Character(
            id: 2, name: "Victor Hoffman",
            description: "character.description.hoffman",
            image: "Hoffman"
        ),
        Character(
            id: 2, name: "Damon Baird",
            description: "character.description.baird",
            image: "Baird"
        ),
        Character(
            id: 2, name: "Dizzy Wallin",
            description: "character.description.dizzy",
            image: "Dizzy"
        ),
        Character(
            id: 2, name: "Dominic Santiago",
            description: "character.description.dom",
            image: "Dom"
        ),
        Character(
            id: 2, name: "Ezra Loomis",
            description: "character.description.ezra_loomis",
            image: "EzraLoomis"
        ),
        Character(
            id: 2, name: "Garron Paduk",
            description: "character.description.paduk",
            image: "Paduk"
        ),
        Character(
            id: 2, name: "Jace Stratton",
            description: "character.description.jace",
            image: "Jace"
        ),
        Character(
            id: 2, name: "JD Fenix",
            description: "character.description.jd_fenix",
            image: "JDFenix"
        ),
        Character(
            id: 2, name: "Kait Diaz",
            description: "character.description.kait_diaz",
            image: "KaitDiaz"
        ),
        Character(
            id: 2, name: "Minh Young Kim",
            description: "character.description.minh_young_kim",
            image: "Kim"
        ),
        Character(
            id: 2, name: "Marcus Fenix",
            description: "character.description.marcus_fenix",
            image: "Marcus"
        ),
        Character(
            id: 2, name: "Michael Barrick",
            description: "character.description.barrick",
            image: "Barrick"
        ),
        Character(
            id: 2, name: "Sam Byrne",
            description: "character.description.sam",
            image: "Sam"
        ),
        Character(
            id: 2, name: "Sofia Hendrick",
            description: "character.description.sofia_hendrick",
            image: "Sofia"
        ),
        Character(
            id: 2, name: "Tai Kaliso",
            description: "character.description.tai",
            image: "Tai"
        ),
    ]
    
    let locustCharacters: [Character] = []
}
