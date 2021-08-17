//
//  TopTableViewCell.swift
//  TopTableViewCell
//
//  Created by 張又壬 on 2021/8/16.
//

import UIKit

class TopTableViewCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        Timer.scheduledTimer(withTimeInterval: 0.15, repeats: false) { _ in
            self.removeSectionSeparators()
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension UITableViewCell {
    func removeSectionSeparators() {
        for subview in subviews {
            print("subview.frame.width: \(subview.frame.width), frame.width:\(frame.width), subview.frame.minY:\(subview.frame.minY), frame.minY:\(frame.minY)")
            if subview != contentView && subview.frame.minY == frame.minY {
                subview.removeFromSuperview()
            }
        }
    }
}
