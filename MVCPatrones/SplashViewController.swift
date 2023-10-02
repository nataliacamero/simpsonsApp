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
        loadData()
     
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
    
    //Metodo simular carga datos
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            //TODO: navegar pantala de home
            let nextviewController = HomeTableViewController()
            self.navigationController?.setViewControllers([nextviewController], animated: true)
        }
    }

}
