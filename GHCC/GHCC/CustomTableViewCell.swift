//
//  CustomTableViewCell.swift
//  GHCC
//
//  Created by Marie Park on 3/22/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class CustomTableViewCell: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var allowanceLabel: UILabel!
    @IBOutlet weak var breakLabel: UILabel!
    @IBOutlet weak var wayToSaveLabel: UILabel!
    @IBOutlet weak var focusOnLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var smallGoalLabel: UILabel!
    
    @IBOutlet weak var amountSavedLabel: UILabel!
    @IBOutlet weak var daysCompletedLabel: UILabel!
    @IBOutlet weak var savingGoalView: UIView!
    @IBOutlet weak var daysProgressLabel: UILabel!
    @IBOutlet weak var savingsProgressLabel: UILabel!
    @IBOutlet weak var daysBarView: UIView!
    @IBOutlet weak var savingsBarView: UIView!
    
    @IBOutlet weak var daysCompleteView: UIView!
    
    
    @IBOutlet weak var savingsTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var daysTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var editIconImageView: UIImageView!
    @IBOutlet weak var expandIconImageView: UIImageView!
    
    var repos: Repo! {
        didSet {
            updateLabels()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("GoalTableViewCellView", owner: self, options: nil)
        self.addSubview(contentView)
        contentView.frame = self.bounds
        
        //        contentView.translatesAutoresizingMaskIntoConstraints = false
        //        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        
    }
    func updateLabels(){
    daysCompletedLabel.textColor = UIColor.white
    amountSavedLabel.textColor = UIColor.white
    daysLabel.textColor = UIColor.themeLightPrimaryBlueColor
    smallGoalLabel.textColor = UIColor.themeLightPrimaryBlueColor
    contentView.backgroundColor = UIColor.themePaleGreenColor
    daysBarView.backgroundColor = UIColor.themeLightPrimaryBlueColor
    savingsBarView.backgroundColor = UIColor.themeLightPrimaryBlueColor
    titleLabel.textColor = UIColor.white
    breakLabel.textColor = UIColor.themeLightPrimaryBlueColor
    wayToSaveLabel.textColor = UIColor.themeLightPrimaryBlueColor
    focusOnLabel.textColor = UIColor.themeLightPrimaryBlueColor
    allowanceLabel.textColor = UIColor.themeLightPrimaryBlueColor
    }

}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
