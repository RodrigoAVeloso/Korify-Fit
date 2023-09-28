//
//  CadastroModel.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 28/09/23.
//

import UIKit

extension CadastroViewController {
    
    @objc func cancelButtonFunc(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func registerButtonAction(){
        guard let emailTFText = getEmailTF().attributedText?.string else { return }
        guard let senhaTFText = getSenhaTF().attributedText?.string else { return }
        guard let confirmaSenhaTFText = getConfirmaSenhaTF().attributedText?.string else { return }
        
        if senhaTFText.caseInsensitiveCompare(confirmaSenhaTFText) != .orderedSame{
            print("Senha: " + senhaTFText)
            print("\nConfirma senha: " + confirmaSenhaTFText)
            let alerta = alert("Erro", "senhas incompativeis!")
            self.present(alerta, animated: true)
            return
        }
        
        let data:[String : String] = [
            "email" : emailTFText,
            "senha" : senhaTFText
        ]
        
        print(emailTFText)
        
        request(dataForRequest: data)
    }
    
    func alert(_ titulo:String,_ message:String) -> UIAlertController{
        let alerta = UIAlertController(title: titulo, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alerta.addAction(action)
        return alerta
    }
    
    func request(dataForRequest: [String:String]){
        // URL da API para a qual você deseja enviar a solicitação POST
        let url = URL(string: "http://localhost:7777/user/create")!
        
        // Criar uma solicitação POST
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: dataForRequest)
        } catch {
            print("Erro ao serializar os parâmetros: \(error)")
        }
        
        // Configurar a sessão URLSession e criar uma tarefa de dados
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Erro na solicitação POST: \(error)")
                return
            }
            
            // Processar a resposta da solicitação (data)
            guard let data = data else { return }
            guard let respostaString = String(data: data, encoding: .utf8) else { return }
            print("Resposta da solicitação POST: \(respostaString)")
            
            
            if let httpResponse = response as? HTTPURLResponse {
                    // Acesso ao código de status HTTP
                    let statusCode = httpResponse.statusCode
                    print("Código de Status HTTP: \(statusCode)")
                if statusCode > 399 && statusCode < 500 {
                    DispatchQueue.main.async {
                        self.clearFields()
                        let alerta = self.alert("Erro", respostaString)
                        self.present(alerta, animated: true)
                    }
                } else if statusCode > 199 && statusCode < 300{
                    DispatchQueue.main.async {
                        self.clearFields()
                        let alerta = self.alert("Sucesso", "Usuário criado com sucesso!!")
                        self.present(alerta, animated: true)
                    }
                }
            }
        }
        
        // Iniciar a tarefa
        task.resume()
    }
}
