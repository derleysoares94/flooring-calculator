class ResultModel {
  double areaFloor;
  int piecesByWidth;
  int piecesByLength;

  ResultModel({
    this.areaFloor,
    this.piecesByWidth,
    this.piecesByLength,
  });

  get amountOfPieces => piecesByWidth * piecesByLength;
  get amountOfFooter => piecesByWidth + piecesByLength;
  get amountPiecesAndFooter => amountOfPieces + amountOfFooter;
  get areaWithoutFooter => amountOfPieces * areaFloor;
  get areaWithFooter => amountPiecesAndFooter * areaFloor;
}
