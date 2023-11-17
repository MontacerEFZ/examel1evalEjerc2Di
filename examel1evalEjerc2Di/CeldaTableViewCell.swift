//
//  CeldaTableViewCell.swift
//  examel1evalEjerc2Di
//
//  Created by Montacer El Fazazi on 16/11/2023.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbPersonajeVotado: UILabel!
    @IBOutlet weak var lbVotante: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
