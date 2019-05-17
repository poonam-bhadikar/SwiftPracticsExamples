//
//  ArtEditorViewCOntrollerViewController.swift
//  ArtEditor
//
//  Created by Poonam Bhadikar on 15/04/19.
//  Copyright © 2019 poonam-bhadikar. All rights reserved.
//

import UIKit

class ArtEditorViewCOntrollerViewController: UIViewController,UIDropInteractionDelegate {
    @IBOutlet weak var dropZone: UIView!{
        didSet{
            dropZone.addInteraction(UIDropInteraction(delegate: self))
        }
    }
    
    @IBOutlet weak var artView: ArtEditorView!
    
    var imagefetcher : ImageFetcher!
    func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool {
        return session.canLoadObjects(ofClass: NSURL.self) && session.canLoadObjects(ofClass: UIImage.self)
    }
    
    func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal {
        return UIDropProposal(operation: .copy)
    }
    func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession) {
        imagefetcher = ImageFetcher(){(url,image) in
            DispatchQueue.main.async {
                self.artView.backGroundImage = image
            }
        }
        
        session.loadObjects(ofClass: NSURL.self){nsUrl in
            
            //drag can have multiple urls as user may pick another url at the same time hence use first also nsURl is a  NSItemProvider  we need to cast it to actual provider here, it is URL
            
            if let url = nsUrl.first as? URL{
                self.imagefetcher.fetch(url)
            }
        }
        session.loadObjects(ofClass: UIImage.self){ images in
            if let image = images.first as? UIImage{
                self.imagefetcher.backup = image
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


 

}
