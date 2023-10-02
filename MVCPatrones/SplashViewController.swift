//
//  SplashViewController.swift
//  MVCPatrones
//
//  Created by Natalia Camero on 2/10/23.
//

import UIKit

class SplashViewController: UIViewController {
    //IBOULETS
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    //CICLO DE VIDA
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    
    //Cuando vaya a aparecer
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if( !activityIndicator.isAnimating) {
            activityIndicator.startAnimating()
        }
        
    }
    
    
    
    //Cuando vaa a dsaparecer
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }

}
