db.auto.aggregate([
  {
    $match: {
      allapot: "s�r�lt"
    }
  },
  {
    $group: {
      _id: "$tipus",
      count: { $sum: 1 }
    }
  },
  {
    $sort: {
      count: -1
    }
  }
]);
