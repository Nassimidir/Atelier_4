class Livre {
  String titre;
  String auteur;
  int _pages;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur, [this._pages = 200]) {
    totalLivres++;
  }

  int get pages {
    return _pages;
  }

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $pages");
  }

  static void afficherTotalLivres() {
    print("Nombre total de livres : $totalLivres");
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  void afficherRoman() {
    afficherInfos();
    print("Genre: $genre");
  }
}

void main() {
  var livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
  var livre2 = Livre("L'Étranger", "Albert Camus");

  livre1.afficherInfos();
  livre2.afficherInfos();

  var roman1 = Roman("Sherlock Holmes", "Arthur Conan Doyle", "Policier");
  var roman2 = Roman("Harry Potter", "J.K. Rowling", "Fantastique");

  roman1.afficherRoman();
  roman2.afficherRoman();

  Livre.afficherTotalLivres();
}