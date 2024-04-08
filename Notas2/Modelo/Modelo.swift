//
//  Modelo.swift
//  Notas2
//
//  Created by Reales Rectoro Myles Clarence on 8/04/24.
//

import Foundation
import CoreData
import UIKit

class Modelo {
    
    public static let shared = Modelo()
    
    func contexto() -> NSManagedObjectContext{
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }
    
    func saveData(titulo: String, nota: String, fecha: Date){
        
        let context = contexto()
        let entityNotas = NSEntityDescription.insertNewObject(forEntityName: "Notas", into: context) as! Notas
        entityNotas.titulo = titulo
        entityNotas.nota = nota
        entityNotas.fecha = fecha
        
        do {
            try context.save()
            print("Guardo")
        } catch let error as NSError {
            print("No guardo", error.localizedDescription)
        }
    }
}
