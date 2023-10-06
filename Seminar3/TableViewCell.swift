//
//  TableViewCell.swift
//  Seminar3
//
//  Created by seif on 2023-10-06.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    let myTextLabel:UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 14)
        control.textColor = .red
        control.text = "Seif"
        control.textColor = .blue
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    private func addView(){
        addSubview(myTextLabel)
        NSLayoutConstraint.activate([
            myTextLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            myTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
}
