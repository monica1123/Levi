//
//  SharpImageView.swift
//  Levi
//
//  Created by Monica Lo on 2021/4/13.
//

import UIKit

class SharpImageView: UIImageView {

    override func layoutSubviews() {
       super.layoutSubviews()
       let path = UIBezierPath()
       path.move(to: CGPoint.zero)
       path.addLine(to: CGPoint(x: bounds.width, y: 0))
       path.addLine(to: CGPoint(x: bounds.width, y: bounds.height * 0.7))
       path.addLine(to: CGPoint(x: 0, y: bounds.height))
       path.close()
       let shapeLayer = CAShapeLayer()
       shapeLayer.path = path.cgPath
       layer.mask = shapeLayer
    }

}
