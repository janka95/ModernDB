db.system.js.save({
  _id: "save_auto",
  value: function (tipus, szin, ar, gyev, allapot, tulaj) {
    var tulajdonos = db.tulajdonos.findOne({_id: tulaj});
    if (tulajdonos) {
      db.auto.insertOne({
        tipus: tipus,
        szin: szin,
        ar: ar,
        gyev: gyev,
        allapot: allapot,
        tulaj: tulajdonos._id
      });
    } else {
      print("Hiba: A megadott tulajdonos nem található!");
    }
  }
});