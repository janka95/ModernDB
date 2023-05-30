db.auto.find({
  $where: function() {
    return this.ar < 1000000 && this.gyev < 2010;
  }
}).count();
