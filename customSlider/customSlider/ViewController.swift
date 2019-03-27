//
//  ViewController.swift
//  customSlider
//
//  Created by Apple on 23/03/19.
//  Copyright © 2019 com.apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var int_countValue : Int = 1
    
    //External view
    @IBOutlet weak var Lbl_SLiderValue : UILabel!
    @IBOutlet weak var slider_custom   : UISlider!
    @IBOutlet weak var btn_minus       : UIButton!
    @IBOutlet weak var btn_pluse       : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    
    //*****************************************************************
    //MARK:- ACTIONS
    //*****************************************************************
    
    @IBAction func action_sliderVIew(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        int_countValue = currentValue
        if int_countValue < 9{
            btn_pluse.setImage(#imageLiteral(resourceName: "plusPink"), for: .normal)
            btn_minus.setImage(#imageLiteral(resourceName: "minusGreen"), for: .normal)
        }else{
            btn_pluse.setImage(#imageLiteral(resourceName: "plusGray"), for: .normal)
        }
        
        if int_countValue > 1{
            
            btn_minus.setImage(#imageLiteral(resourceName: "minusGreen"), for: .normal)
            btn_pluse.setImage(#imageLiteral(resourceName: "plusPink"), for: .normal)
        }else{
            btn_minus.setImage(#imageLiteral(resourceName: "minusGray"), for: .normal)
        }
        forSlidderValueSet()
    }
    
    func forSlidderValueSet(){
        Lbl_SLiderValue.text = "\(int_countValue)"
        
        if int_countValue < 5{
            slider_custom.thumbTintColor = #colorLiteral(red: 0.2913158536, green: 0.7403896451, blue: 0.6790443063, alpha: 1)
            Lbl_SLiderValue.textColor = #colorLiteral(red: 0.2913158536, green: 0.7403896451, blue: 0.6790443063, alpha: 1)
            
        }else if int_countValue > 6{
            slider_custom.thumbTintColor = #colorLiteral(red: 0.9680988193, green: 0.2668119669, blue: 0.4549171329, alpha: 1)
            Lbl_SLiderValue.textColor = #colorLiteral(red: 0.9680988193, green: 0.2668119669, blue: 0.4549171329, alpha: 1)
            
        }else{
            slider_custom.thumbTintColor = #colorLiteral(red: 0.9916201234, green: 0.7934477925, blue: 0.4235867858, alpha: 1)
            Lbl_SLiderValue.textColor = #colorLiteral(red: 0.9916201234, green: 0.7934477925, blue: 0.4235867858, alpha: 1)
        }
    }
    
    @IBAction func action_Pluse(_ sender: UIButton) {
        if int_countValue < 10{
            btn_pluse.setImage(#imageLiteral(resourceName: "plusPink"), for: .normal)
            btn_minus.setImage(#imageLiteral(resourceName: "minusGreen"), for: .normal)
            
            int_countValue += 1
            slider_custom.value = Float(int_countValue)
            forSlidderValueSet()
        }else{
            btn_pluse.setImage(#imageLiteral(resourceName: "plusGray"), for: .normal)
        }
    }
    
    @IBAction func action_Minuse(_ sender: UIButton) {
        if int_countValue > 1{
            
            int_countValue -= 1
            btn_minus.setImage(#imageLiteral(resourceName: "minusGreen"), for: .normal)
            btn_pluse.setImage(#imageLiteral(resourceName: "plusPink"), for: .normal)
            slider_custom.value = Float(int_countValue)
            forSlidderValueSet()
        }else{
            btn_minus.setImage(#imageLiteral(resourceName: "minusGray"), for: .normal)
        }
    }    
}
