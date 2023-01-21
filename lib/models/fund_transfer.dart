class FundTransfer {
  String name;
  String image;

  // FundTransfer(this.image);
  FundTransfer({this.name = '',this.image = ''});
}
var fundTransfer = [
  FundTransfer(name: 'Bank\nAccount', image: 'bank_account.svg'),
  FundTransfer(name: 'Favourite\nAccount', image: 'favourite.svg'),
  FundTransfer(name: 'Own\nAccount', image: 'user.svg'),
  FundTransfer(name: 'Wallet', image: 'wallet.svg'),
];

// List<FundTransfer> items = transferData.map((item)=> FundTransfer(item['image'])).toList();

// var transferData = [
//   {
//     ""
//   }
// ];