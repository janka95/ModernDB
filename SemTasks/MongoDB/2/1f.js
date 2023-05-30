db.auto.updateMany(
  { allapot: "sérült" },
  { $inc: { ar: -300000 } }
)
