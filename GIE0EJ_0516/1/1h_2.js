db.auto.aggregate([
  {
    $group: {
      _id: "$tipus",
      atlagar: { $avg: "$ar" }
    }
  }
]);