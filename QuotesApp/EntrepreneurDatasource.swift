//
//  EntrepreneurDatasource.swift
//  QuotesApp
//
//  Created by Abhishek Dwivedi on 09/05/16.
//  Copyright © 2016 Abhishek Dwivedi. All rights reserved.
//

import Foundation

/*
EnterpreneurDatasource is responsible for providing data to VCs
*/

struct EntrepreneurDatasource{
    
    private static var entrepreneurs = [Entrepreneur]()
    
    private static let ratanQuotes = [
        "Power and wealth are not two of my main stakes.",
        "I would say that one of the things I wish I could do differently would be to be more outgoing.",
        "If it stands the test of public scrutiny, do it... if it doesn't stand the test of public scrutiny then don't do it.",
        "The day I am not able to fly will be a sad day for me.",
        "I have two or three cars that I like, but today, Ferrari would be the best car I have driven in terms of being an impressive car.",
        "If it stands the test of public scrutiny, do it... if it doesn't stand the test of public scrutiny then don't do it.",
        "Power and wealth are not two of my main stakes.",
        "I have two or three cars that I like, but today, Ferrari would be the best car I have driven in terms of being an impressive car.",
        "The day I am not able to fly will be a sad day for me.",
        "I would say that one of the things I wish I could do differently would be to be more outgoing."
    ]
    private static let jackQuotes = [
        "I believe in unconditional love and equality. Jesus Christ exemplified these qualities.",
        "I believe that people make their own luck by great preparation and good strategy.",
        "You can't heal what you don't acknowledge.",
        "Overcome your barriers, intend the best, and be patient. You will enjoy more balance, more growth, more income, and more fun!",
        "Self-esteem is made up primarily of two things: feeling lovable and feeling capable.",
        "You can't heal what you don't acknowledge.",
        "I believe that people make their own luck by great preparation and good strategy.",
        "Overcome your barriers, intend the best, and be patient. You will enjoy more balance, more growth, more income, and more fun!",
                "I believe in unconditional love and equality. Jesus Christ exemplified these qualities.",
        "Self-esteem is made up primarily of two things: feeling lovable and feeling capable."]
    private static let warrenQuotes = [
        "Price is what you pay. Value is what you get.",
        "It takes 20 years to build a reputation and five minutes to ruin it. If you think about that, you'll do things differently.",
        "It's far better to buy a wonderful company at a fair price than a fair company at a wonderful price.",
        "Risk comes from not knowing what you're doing.",
        "Rule No.1: Never lose money. Rule No.2: Never forget rule No.1.",
        "Price is what you pay. Value is what you get.",
        "Rule No.1: Never lose money. Rule No.2: Never forget rule No.1.",
        "It's far better to buy a wonderful company at a fair price than a fair company at a wonderful price.",
        "Risk comes from not knowing what you're doing.",
        "It takes 20 years to build a reputation and five minutes to ruin it. If you think about that, you'll do things differently."
        ]
    
    static func fetchAllEntrepreneurs() -> [Entrepreneur] {
        let ratanTata = Entrepreneur(name: "Ratan Tata", image: "ratan.png", quote: ratanQuotes)
        let jackCanfield = Entrepreneur(name: "Jack Canfield", image: "jack.png", quote: jackQuotes)
        let warrenBuffet = Entrepreneur(name: "Warren Buffet", image: "warren.png", quote: warrenQuotes)
        entrepreneurs += [ratanTata, jackCanfield, warrenBuffet,ratanTata, jackCanfield, warrenBuffet,ratanTata, jackCanfield, warrenBuffet]
        
        return entrepreneurs
    }
}
