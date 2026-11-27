//
//  ContentView.swift
//  Reminiscence
//
//  Created by Enes Aydoğan on 24.11.2026.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var friends: Location = {
        var location = Location(type: .Bar, coordinates: CLLocationCoordinate2D(latitude: 0, longitude: 0))
        location.setName(to: "Friends")
        location.setDescription(to: "I miss Artem")
        return location
    }()

    var body: some View {
        Map {
            Marker("\(friends.getName())", coordinate: friends.getCoordinates())
        }
    }
}

struct Location {
    enum TypeOfPlace {
        case TouristAttraction, Cafe, Bar, Restaurant, Residence, PlaceOfWork, Default
    }

    private let type: Location.TypeOfPlace
    private let coordinates: CLLocationCoordinate2D
    private var name: String?
    private var description: String?

    init(type: Location.TypeOfPlace, coordinates: CLLocationCoordinate2D) {
        self.type = type
        self.coordinates = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    public func getCoordinates() -> CLLocationCoordinate2D {
        return coordinates
    }

    public mutating func setName(to newName: String) {
        name = newName
    }

    public func getName() -> String {
        guard let nameValue = name else {
            return "No name found."
        }
        return nameValue
    }

    func getType() -> Location.TypeOfPlace {
        return self.type
    }

    mutating func setDescription(to newDescription: String) {
        description = newDescription
    }

    func getDescription() -> String {
        guard let descriptionValue = description else {
            return "No description found."
        }
        return descriptionValue
    }
}

#Preview {
    ContentView()
}
