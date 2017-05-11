
import Foundation
import FirebaseDatabase

class DBProvider {
    private static let _instance = DBProvider();
    
    static var Instance: DBProvider {
        return _instance;
    }
    
    var dbRef: FIRDatabaseReference {
        return FIRDatabase.database().reference();
    }
    
    var ridersRef: FIRDatabaseReference {
        return dbRef.child(Constants.RIDERS);
    }
    
    var requestRef: FIRDatabaseReference {
        return dbRef.child(Constants.UBER_REQUEST);
    }
    
    var requestAcceptedRef: FIRDatabaseReference {
        return dbRef.child(Constants.UBER_ACCEPTED);
    }
    
    func saveUser(withID: String, email: String, password: String) {
        let data: Dictionary<String, Any> = [Constants.EMAIL: email, Constants.PASSWORD: password, Constants.isRider: true];
        ridersRef.child(withID).child(Constants.DATA).setValue(data);
    }
    
}







































