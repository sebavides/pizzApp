//
//  vistaMasa.swift
//  pizzApp
//
//  Created by Seba Benavides on 22-11-15.
//  Copyright © 2015 Seba Benavides. All rights reserved.
//

import UIKit

class vistaMasa: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    var masa = ["Delgada","Crujiente","Gruesa"]
    var seleccion:String = ""
    var tamano:String = ""
    
    @IBOutlet weak var pickerMasa: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seleccion=masa[0]
        
        self.pickerMasa.dataSource = self
        self.pickerMasa.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masa.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masa[row]
        }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0){
        seleccion=masa[0]
        }else if(row == 1){
            seleccion=masa[1]
        }else if(row == 2){
            seleccion=masa[2]
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as!
        vistaQueso
        nextView.masa=seleccion
        nextView.tamano=tamano
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
