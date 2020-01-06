//
//  TMBarButtonBar.swift
//  MyerSplash
//
//  Created by JuniperPhoton on 2020/1/6.
//  Copyright © 2020 juniper. All rights reserved.
//

import Foundation
import Tabman
import Pageboy

func createTopTabBar() -> TMBar.ButtonBar {
    let bar = TMBar.ButtonBar()
    bar.layout.transitionStyle = .snap
    bar.layout.alignment = .leading
    bar.layout.contentInset = UIEdgeInsets(top: 0.0, left: 20.0, bottom: 12.0, right: 60)
    bar.backgroundView.style = .flat(color: UIColor.getDefaultBackgroundUIColor())
    bar.layout.interButtonSpacing = 12
    bar.buttons.customize { (button) in
        button.tintColor = UIColor.getDefaultLabelUIColor().withAlphaComponent(0.3)
        button.selectedTintColor = UIColor.getDefaultLabelUIColor()
        button.font = UIFont.preferredFont(forTextStyle: .largeTitle).with(traits: .traitBold).withSize(13)
    }
    bar.indicator.tintColor = UIColor.getDefaultLabelUIColor()
    bar.indicator.weight = .custom(value: 4)
    
    return bar
}