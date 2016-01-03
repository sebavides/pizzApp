//
//  vistaResumen.swift
//  pizzApp
//
//  Created by Seba Benavides on 22-11-15.
//  Copyright © 2015 Seba Benavides. All rights reserved.
//

import UIKit

class vistaResumen: UIViewController {
    @IBOutlet weak var varTamano: UILabel!
    @IBOutlet weak var varMasa: UILabel!
    @IBOutlet weak var varQueso: UILabel!
    @IBOutlet weak var varResultado: UILabel!
    @IBOutlet weak var varIngredientes: UILabel!
    
    
    var tamano:String=""
    var masa:String=""
    var queso:String=""
    var ingredientes=[String:Int]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        varTamano.text = tamano
        varMasa.text = masa
        varQueso.text = queso
        
        var acumulada=0
        var cadena=""
        for(tipo, cantidad) in ingredientes {
            acumulada = acumulada+cantidad
            if(cantidad>0){
                cadena=cadena+"\(tipo) x\(cantidad)"
            }}
        if(acumulada<=5 && acumulada>0){
            varIngredientes.text = cadena
            varResultado.text = "Pedido Correcto"
        }else{
            varIngredientes.text = "Seleccione un numero de ingredientes valido"
            varResultado.text = "Pedido Incorrecto"
        }
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
}
