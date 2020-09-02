//
//  DataManeger.swift
//  MovieList
//
//  Created by Kisacka on 02/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import Foundation

class DataManager{
    
    static let shared = DataManager()
    
    var movie = [
        "12 YEARS A SLAVE",
        "1917",
        "A STAR IS BORN",
        "BEAUTY AND THE BEAST",
        "BREAKFAST AT TIFFANY'S",
        "NO TIME TO DIE",
        "SOME LIKE IT HOT"
    ]
     var year = [
        "2013",
        "2019",
        "2018",
        "2017",
        "1961",
        "2020",
        "1959"
    ]
    
    var cover = [
        "12 YEARS A SLAVE - 2013",
        "1917 - 2019",
        "A STAR IS BORN - 2018",
        "BEAUTY AND THE BEAST - 2017",
        "BREAKFAST AT TIFFANY'S - 1961",
        "NO TIME TO DIE - 2020",
        "SOME LIKE IT HOT - 1959"
    ]
    
    
}
