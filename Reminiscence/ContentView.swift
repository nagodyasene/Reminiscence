//
//  ContentView.swift
//  Reminiscence
//
//  Created by Enes Aydoğan on 24.11.2026.
//

import SwiftUI
<<<<<<< HEAD
import MapKit

struct ContentView: View {
    var friends: Location = {
        var location = Location(type: .Bar, coordinates: CLLocationCoordinate2D(latitude: 0, longitude: 0))
        location.setName(to: "Friends")
        return location
    }()

    var body: some View {
        ZStack {
            TabView {
                Tab("Map", systemImage: "map") {
                    MapView()
                }
                Tab("Account", systemImage: "person.crop.circle") {
                    AccountView()
                }
            }
        }
    }
}

struct MapView : View {
    var body: some View {
        Map {
            
        }
    }
}

struct CardView: View {
    let title: String
    let value: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.title)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer(minLength: 8)

            Text("\(value)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .aspectRatio(1, contentMode: .fit)
        .background(Color(.systemGray5), in: .rect(cornerRadius: 24))
    }
}

struct AccountView: View {
    var photosTaken: Int = 1
    var body: some View {
        ScrollView {
            HStack(spacing: 15) {
                Image("ProfilePicture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(.circle)
                
                VStack(alignment: .leading) {
                    Text("Enes Aydoğan")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("Studying in Liberec")
                        .foregroundStyle(.secondary)
                }
            }
            Grid {
                GridRow {
                    CardView(title: "Photos taken", value: 1)
                    CardView(title: "Places seen", value: 1)
                }
            }
            .padding()
=======
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
>>>>>>> 956fc2907b78c5dc98d70d6841abf9e452759389
        }
    }
}

<<<<<<< HEAD
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
    AccountView()
=======
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
>>>>>>> 956fc2907b78c5dc98d70d6841abf9e452759389
}
