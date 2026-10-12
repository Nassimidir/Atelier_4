class Compte {
  double _solde;
  final String numeroCompte;

  Compte(this.numeroCompte, [this._solde = 0.0]);
  
  String get solde {
  return "${_solde.toStringAsFixed(2)} \$";
}
void depot(double montant) {
  if (montant > 0) {
    _solde = _solde + montant;
  }
}
}

void main() {
  var compte = Compte("C001");

  compte.depot(150.0);

  print("Solde : ${compte.solde}");
}