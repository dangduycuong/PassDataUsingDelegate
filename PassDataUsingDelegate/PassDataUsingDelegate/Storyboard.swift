//
//  Storyboard.swift
//  PassDataUsingDelegate
//
//  Created by Dang Duy Cuong on 3/3/21.
//  Copyright © 2021 duycuong. All rights reserved.
//

import UIKit

struct Storyboard {
    
}

extension Storyboard {
    
    struct Main {
        static let manager = UIStoryboard(name: "Main", bundle: nil)
        
        static func secondViewController() -> SecondViewController {
            return manager.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        }
        
        static func endViewController() -> EndViewController {
            return manager.instantiateViewController(withIdentifier: "EndViewController") as! EndViewController
        }
        
    }
}
