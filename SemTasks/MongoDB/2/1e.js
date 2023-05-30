db.system.js.save({
  _id: "getAutoByTulajName",
  value: function (tulajnev) {
    var tulajdonos = db.tulajdonos.findOne({nev: tulajnev});
    if (tulajdonos) {
      return db.auto.find({tulaj: tulajdonos._id}).toArray();
    } else {
      print("Nem tal�lhat� tulajdonos a megadott n�vvel!");
      return [];
    }
  }
});