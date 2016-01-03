//
//  vistatamano.swift
//  pizzApp
//
//  Created by Seba Benavides on 22-11-15.
//  Copyright © 2015 Seba Benavides. All rights reserved.
//

import UIKit

class vistatamano: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var tamano = ["Pequeña","Mediana","Grande"]
    var seleccion:String=""
    
    @IBOutlet weak var pickerTamano: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        seleccion=tamano[0]
        self.pickerTamano.dataSource = self
        self.pickerTamano.delegate = self
        
        

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
        return tamano.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamano[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0){
        seleccion=tamano[0]
        }else if(row == 1){
        seleccion=tamano[1]
        }else if(row == 2){
        seleccion=tamano[2]
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as!
            vistaMasa
        nextView.tamano=seleccion
        }

}
