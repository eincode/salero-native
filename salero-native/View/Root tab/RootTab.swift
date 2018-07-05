//
//  RootTab.swift
//  salero-native
//
//  Created by Ananta Pratama on /5Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

import UIKit

class RootTab: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Navigation bar setup
        self.title = "Salero"
        self.navigationItem.setHidesBackButton(true, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
