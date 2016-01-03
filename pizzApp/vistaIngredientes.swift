//
//  vistaIngredientes.swift
//  pizzApp
//
//  Created by Seba Benavides on 22-11-15.
//  Copyright © 2015 Seba Benavides. All rights reserved.
//

import UIKit

class vistaIngredientes: UIViewController {
    
    
    @IBOutlet weak var stepJamon: UIStepper!
    @IBOutlet weak var stepPavo: UIStepper!
    @IBOutlet weak var stepPepperonni: UIStepper!
    @IBOutlet weak var stepSalchicha: UIStepper!
    @IBOutlet weak var stepPimiento: UIStepper!
    @IBOutlet weak var stepPiña: UIStepper!
    @IBOutlet weak var stepAnchoa: UIStepper!
    
    @IBOutlet weak var labelJamon: UILabel!
    @IBOutlet weak var labelPepperonni: UILabel!
    @IBOutlet weak var labelPavo: UILabel!
    @IBOutlet weak var labelSalchicha: UILabel!
    @IBOutlet weak var labelPiña: UILabel!
    @IBOutlet weak var labelPimiento: UILabel!
    @IBOutlet weak var labelAnchoa: UILabel!
    
    @IBAction func jamonAction(sender: UIStepper){
        labelJamon.text = Int(sender.value).description
        jamon = Int(Int(sender.value).description)!
    }
    
    @IBAction func peperonniAction(sender: UIStepper){
            labelPepperonni.text = Int(sender.value).description
            pepperonni = Int(Int(sender.value).description)!
        }
    @IBAction func pavoAction(sender: UIStepper){
        labelPavo.text = Int(sender.value).description
        pavo = Int(Int(sender.value).description)!
        }
    @IBAction func salchichaAction(sender:UIStepper){
        labelSalchicha.text = Int(sender.value).description
        salchicha = Int(Int(sender.value).description)!
    }
    @IBAction func pinaAction(sender:UIStepper){
        labelPiña.text = Int(sender.value).description
        piña = Int(Int(sender.value).description)!
    }
    @IBAction func pimientoAction(sender:UIStepper){
        labelPimiento.text = Int(sender.value).description
        pimiento = Int(Int(sender.value).description)!
            }
    @IBAction func anchoaAction(sender:UIStepper){
        labelAnchoa.text = Int(sender.value).description
        anchoa = Int(Int(sender.value).description)!
    
    }
    
    var jamon=0
    var pepperonni=0
    var pavo=0
    var salchicha=0
    var piña=0
    var pimiento=0
    var anchoa=0
    var bacon=0
    
    
    var ingredientes = ""
    var queso = ""
    var masa = ""
    var tamano = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        stepJamon.wraps = true
        stepJamon.autorepeat = true
        stepJamon.maximumValue = 1
        
        stepPepperonni.wraps = true
        stepPepperonni.autorepeat = true
        stepPepperonni.maximumValue = 1
        
        stepPavo.wraps = true
        stepPavo.autorepeat = true
        stepPavo.maximumValue = 1

        stepJamon.wraps = true
        stepJamon.autorepeat = true
        stepJamon.maximumValue = 1
        
        stepSalchicha.wraps = true
        stepSalchicha.autorepeat = true
        stepSalchicha.maximumValue = 1
        
        stepPiña.wraps = true
        stepPiña.autorepeat = true
        stepPiña.maximumValue = 1
        
        stepPimiento.wraps = true
        stepPimiento.autorepeat = true
        stepPimiento.maximumValue = 1
        
        stepAnchoa.wraps = true
        stepAnchoa.autorepeat = true
        stepAnchoa.maximumValue = 1
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredientesDicc=[
        "jamon":Int(jamon),
        "Pepperonni":Int(pepperonni),
        "Pavo":Int(pavo),
        "Salchicha":Int(salchicha),
        "Piña":Int(piña),
        "Pimiento":Int(pimiento),
        "Anchoa":Int(anchoa)
        ]
    let nextView = segue.destinationViewController as!
        vistaResumen
        nextView.queso=queso
        nextView.masa=masa
        nextView.tamano=tamano
        nextView.ingredientes=ingredientesDicc
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
