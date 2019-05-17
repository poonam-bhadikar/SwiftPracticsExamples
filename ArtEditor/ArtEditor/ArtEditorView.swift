//
//  ArtEditorView.swift
//  ArtEditor
//
//  Created by Poonam Bhadikar on 15/04/19.
//  Copyright © 2019 poonam-bhadikar. All rights reserved.
//

import UIKit

class ArtEditorView: UIView {


    var backGroundImage:UIImage?{didSet{setNeedsDisplay()}}
    
    override func draw(_ rect: CGRect) {
            backGroundImage?.draw(in: bounds)
        
    }
   

}
