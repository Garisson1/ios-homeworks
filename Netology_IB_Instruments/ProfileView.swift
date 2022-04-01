//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by home on 31.03.2022.
//

import  UIKit


class ProfileView: UIView {
    
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var textLabel: UITextView!
    override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupView()
}
required init?(coder: NSCoder) {
    super.init(coder: coder)
    self.setupView()
}

private func setupView() {
    let view = self.loadViewFromXib()
    self.addSubview(view)
    view.frame = self.bounds
    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
}

private func loadViewFromXib() -> UIView {
    guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView else {return UIView() }
    return view
}
}
