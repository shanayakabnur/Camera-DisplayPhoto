//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController ()

    @IBOutlet weak var imagePickerController: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imagePickerController.image = selectedImage
        }
    }
    @IBAction func choosePhotoTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    

}









