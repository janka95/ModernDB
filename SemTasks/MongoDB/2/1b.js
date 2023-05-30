db.system.js.save({
  _id: "save_tulaj",
  value: function (id, nev, kor) {
    db.tulajdonos.insertOne({
      _id: id,
      nev: nev,
      kor: kor
    });
  }
})