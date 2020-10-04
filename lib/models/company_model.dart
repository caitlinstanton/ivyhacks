class Company {
  final String name;
  final String subtitle;
  final String briefDescription;
  final String fullDescription;
  final String imageURL;
  final bool
      isDetailsDisplayable; // Whether or not the details ready to be displayed
  Company(
      {this.name,
      this.subtitle,
      this.briefDescription,
      this.fullDescription,
      this.imageURL,
      this.isDetailsDisplayable=false});
}
