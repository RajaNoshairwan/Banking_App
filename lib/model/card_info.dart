class CardDetails {
  final String full_name;
  final String user_image;
  final String card_number;
  final String last_name;
  final String exp_date;
  final int cvv;

  CardDetails({
    required this.full_name,
    required this.user_image,
    required this.card_number,
    required this.last_name,
    required this.exp_date,
    required this.cvv,
});
}

final dummycard = CardDetails(
  full_name: 'Raja Noshairwan',
 card_number : '4562112245957852',
 last_name : 'Noshairwan',
 exp_date : '24/2025',
 cvv : 6986,
  user_image :'assets/me.png',
);