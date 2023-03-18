//
//  ViewController.swift
//  JImage
//
//  Created by wodyddml2 on 03/09/2023.
//  Copyright (c) 2023 wodyddml2. All rights reserved.
//

import UIKit
import JImage

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    let url: String = "https://apod.nasa.gov/apod/image/2201/OrionStarFree3_Harbison_5000.jpg"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        

    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        imageView.image = UIImage(systemName: "star")
        JImage.example(with: url, completion: { image in
            DispatchQueue.main.async {
                self.imageView.image = image
            }
            
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

