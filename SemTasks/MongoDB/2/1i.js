db.auto.aggregate([
  {
    $match: {
      allapot: "sérült"
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
