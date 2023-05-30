db.system.js.save({
  _id: "getTulajByName",
  value: function (nev) {
    return db.tulajdonos.find({ nev: nev }).toArray();
  }
});