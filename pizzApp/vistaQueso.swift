//
//  vistaQueso.swift
//  pizzApp
//
//  Created by Seba Benavides on 22-11-15.
//  Copyright © 2015 Seba Benavides. All rights reserved.
//

import UIKit

class vistaQueso: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    var queso = ["Parmesano","Mozzarela","Cheddar","Sin queso"]
    var seleccion = ""
    var tamano = ""
    var masa = ""
    

    @IBOutlet weak var pickerQueso: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        seleccion=queso[0]
        
        self.pickerQueso.dataSource = self
        self.pickerQueso.delegate = self
        
        
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
        return queso.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return queso[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (row == 0){
            seleccion=queso[0]
        }else if (row == 1){
            seleccion=queso[1]
        }else if (row == 2){
            seleccion=queso[2]
        }else if(row == 3){
            seleccion=queso[3]
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! vistaIngredientes
        nextView.queso=seleccion
        nextView.masa=masa
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
