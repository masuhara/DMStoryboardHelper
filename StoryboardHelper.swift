//
//  StoryboardHelper.swift
//  GitTest
//
//  Created by Masuhara on 2015/09/18.
//  Copyright © 2015年 AuraOtsuka. All rights reserved.
//

import UIKit

struct StoryboardHelper {
    
    static var currentDevice = UIDevice.current
    static var height = UIScreen.main.bounds.size.height
    
    static func adjust(to window: UIWindow?) {
        
        // Check window
        guard let window = window else {
            print("Window is nil.")
            return
        }
        
        var storyboard = UIStoryboard()
        if height == 667 {
            // iPhone6,6s,7,7s
            storyboard = UIStoryboard(name: "Main", bundle: nil)
        } else if height == 736 {
            // iPhone6+,7+
            storyboard = UIStoryboard(name: "Main", bundle: nil)
        } else if height == 480 {
            // iPhone4,4s
            storyboard = UIStoryboard(name: "3.5inch", bundle: nil)
        } else if height == 1024 {
            // iPad,2,Air,mini
            storyboard = UIStoryboard(name: "3.5inch", bundle: nil)
        } else {
            // iPhone5,5s,5c,unknown
            storyboard = UIStoryboard(name: "Main", bundle: nil)
        }
        
        window.rootViewController = storyboard.instantiateInitialViewController()! as UIViewController
        window.makeKeyAndVisible()
    }
    
}
