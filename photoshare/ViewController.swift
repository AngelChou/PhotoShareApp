//
//  ViewController.swift
//  photoshare
//
//  Created by Shun-Ching, Chou on 2017/5/4.
//  Copyright © 2017年 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var picker:UIImagePickerController!
    
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        Ostetso.showGallery()
        
        picker = UIImagePickerController()
        picker.delegate = self
    }
    
    @IBAction func shareButtonClicked(_ sender: Any) {
        Ostetso.share(imageView.image)
    }

    @IBAction func chooseButtonClicked(_ sender: Any) {
        present(self.picker, animated: true, completion: nil)
    }
    
    @IBAction func galleryButtonClicked(_ sender: Any) {
        Ostetso.showGallery()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = pickedImage
            shareButton.isEnabled = true
        }
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

