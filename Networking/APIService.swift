//
//  APIService.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import Foundation

final class APIService {
    static let shared = APIService()
    
    func fetchNews(completion: @escaping (News) -> Void) {
            let urlString = FULL_URLS
            fetchGenericJSONData(urlString: urlString, completion: completion)
        }
    
    func fetchGenericJSONData<T: Decodable>(urlString: String, completion: @escaping (Result<T, RPError>) -> ()) {
            //MARK:- check what type your using
            print("T is of type:", T.self)
            guard let url = URL(string: urlString) else {
                completion(.failure(.networkError))
                return
            }
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let _ = error {
                    completion(.failure(.networkError))
                }
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    completion(.failure(.networkError))
                    return
                }
                guard let data = data else {
                    completion(.failure(.networkError))
                    return
                }
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let objects = try decoder.decode(T.self, from: data)
                    completion(.success(objects))
                } catch {
                    completion(.failure(RPError.networkError))
                }
            }
            task.resume()
        }
    
    
    
    
}



