//
//  NumAlpha.swift
//  arsParaSolvica
//
//  Created by Joel Majors on 2/2/17.
//  Copyright © 2017 GloryKiddTech. All rights reserved.
//

import Foundation

// need to intake numbers and change to letters
    // need to change
    // need to change letters based on A=1 
    // need to change letters based on A=26

// create an array for a-z, let a=0, then add 1. Or sub 1 from numnbers provided?

protocol Letters {

}

enum ColorsList {
    case Blue
    case Green
    case Red
}

protocol Colors {
    var colors: [ColorsList] { get }
}



struct NumAlpha {

    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    
    
    func numAlpha(type: Int) -> String {
        var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var numbers = "0123456789"
        var out: String
        var input = 0
        
        return
        
    }
    
}


/*
 
 need to create a plist that is populated by pulling from the arsparadoxica site, then storing all of the stuff indicated in the next section.
 
 if no data can be retrieved, it will not update the plist file.
 
 */


/*
 Right now the code from the website follows the below prescription. it would be awesome to scrape the site for something matching the below, pull the color from the css and use that to generate the correct break.
 
 
 <div class="sqs-block code-block sqs-block-code" data-block-type="23" id="block-yui_3_17_2_32_1485897400574_55296"><div class="sqs-block-content"><p style="font-family:Courier;font-weight:bold;text-align:center;color:#00a000;">24 20 02 | 09 04 04 07 07 01 | 09 03 08 16 | 11 17 09 16 11 13 | 21 05 18 16<br>WEATHER: dark</p></div></div>
 */
