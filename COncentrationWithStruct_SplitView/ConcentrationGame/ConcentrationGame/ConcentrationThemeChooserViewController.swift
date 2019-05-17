//
//  ConcentrationThemeChooserViewController.swift
//  ConcentrationGame
//
//  Created by Poonam Bhadikar on 12/05/19.
//  Copyright © 2019 poonam-bhadikar. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {
    
    @IBAction func ChangeTheme(_ sender: Any) {
        
        performSegue(withIdentifier: "Theme Chooser Segue", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    var Themename = [
        "Sports":"⚽️🏐🏀🥎🏑🏉🏓⚽️🏐🏀🥎🏑🏉🏓",
        "Faces":"👩👳🏽‍♀️🧕🏻🧕🏻🧕🏻🧕🏻🧕🏻🧕🏻👩👳🏽‍♀️🧕🏻🧕🏻🧕🏻🧕🏻🧕🏻🧕🏻",
        "Animal":"🐭🦋🐌🐤🐌🐭🐭🦋🐌🐤🐌🐭"
    ]
    
    // MARK: - Navigation
    
    //here , we will set theme for concentration view controller on the basis of theme button selected.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.identifier == "Theme Chooser Segue"
        {
            //select theme on the basis of title of button selected // wrong practice
            if let buttonSelected = sender as? UIButton{
                
                if let themeName = buttonSelected.currentTitle, let theme = Themename[themeName]
                {
                    if let cvc = segue.destination as?         ConcentrationViewController{
                        cvc.theme = theme
                    }
                    
                    
                }
            }
        }
        
        
        
    }
    
    
}
