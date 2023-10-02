//
//  HomeTableViewCell.swift
//  MVCPatrones
//
//  Created by Natalia Camero on 2/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    //IBOUTLETS
    @IBOutlet var viewHomeCell: UIView!
    @IBOutlet var imageHomeCell: UIImageView!
    @IBOutlet var labelHomeCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib() // Se llama una vez, la primera vez y prepara la celda
        viewHomeCell.layer.cornerRadius = 4.0
        viewHomeCell.layer.shadowColor = UIColor.gray.cgColor
        viewHomeCell.layer.shadowOffset = .zero
        viewHomeCell.layer.shadowOpacity = 0.7
        viewHomeCell.layer.shadowRadius = 4.0
        
        imageHomeCell.layer.cornerRadius = 4.0
        imageHomeCell.layer.opacity = 0.7
    }
    
    override func prepareForReuse() { // Limpia las celdas para meter los nuevos datos
        super.prepareForReuse() //Siempre enun overried super
        imageHomeCell.image = nil
        labelHomeCell.text = nil
    }
    
    func updateViews() {
        
    }
}
