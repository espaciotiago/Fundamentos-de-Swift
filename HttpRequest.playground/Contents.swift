import UIKit

func get() {
    let url = URL(string: "https://rickandmortyapi.com/api/character")!
    URLSession.shared.dataTask(with: url) { data, response, error in
        // Verificar si hubo algún error
        if let error = error {
            print("Error: \(error.localizedDescription)")
            return
        }
        
        // Verificar si se recibieron datos
        guard let data = data else {
            print("No se recibieron datos")
            return
        }
        
        // Intentar parsear los datos como JSON
        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let results = json["results"] as? Array<[String: Any]>  {
                for obj in results {
                    print(obj["name"] as! String)
                }
            } else {
                print("Failed to parse response data")
            }
        } catch {
            print("Error al parsear JSON: \(error.localizedDescription)")
        }
    }.resume()
}

func getAsync() async {
    let url = URL(string: "https://rickandmortyapi.com/api/character")!
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
           let results = json["results"] as? Array<[String: Any]>  {
            for obj in results {
                print(obj["name"] as! String)
            }
        } else {
            print("Failed to parse response data")
        }
    } catch {
        print("Error: \(error.localizedDescription)")
    }
}

print("start")
get()
print("done")


Task {
    print("start")
    await getAsync()
    print("done")
}

