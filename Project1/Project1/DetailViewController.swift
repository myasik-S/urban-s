//
//  DetailViewController.swift
//  Project1
//
//  Created by Aleksandr Myasoedov on 14.05.2020.
//  Copyright © 2020 Александр Мясоедов. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    var selectPicturesNumber: String?
    var totalPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        title = selectedImage
        title = "This image is \(selectPicturesNumber!) or \(totalPictures)"
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
     
    }
    
     
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    

}
