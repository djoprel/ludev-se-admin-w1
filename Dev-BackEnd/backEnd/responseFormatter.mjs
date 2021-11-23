export function bidFormatter(bids) {
  for (let bid of bids) {
    JSON.stringify(bid);

    bid["group_concat(Bid.mgrade ORDER BY Bid.choice ASC)"] = bid[
      "group_concat(Bid.mgrade ORDER BY Bid.choice ASC)"
    ]
      .split(",") //Divide string of numbers into an array of numbers which are of the type string.
      .map(Number); //Cast the numbers which are now of type string to type number.
    //change the key to a clear and understandable key and delete the old key.
    bid["mgrade"] = bid["group_concat(Bid.mgrade ORDER BY Bid.choice ASC)"];
    delete bid["group_concat(Bid.mgrade ORDER BY Bid.choice ASC)"];

    bid["group_concat(Bid.pid ORDER BY Bid.choice ASC)"] = bid[
      "group_concat(Bid.pid ORDER BY Bid.choice ASC)"
    ]
      .split(",")
      .map(Number);
    bid["pid"] = bid["group_concat(Bid.pid ORDER BY Bid.choice ASC)"];
    delete bid["group_concat(Bid.pid ORDER BY Bid.choice ASC)"];
  }
  return bids;
}
