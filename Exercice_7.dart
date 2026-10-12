class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
  nombreTotal++;
}
}

void main() {
  Tache t1 = Tache("Faire les devoirs");
  Tache t2 = Tache("Étudier Dart");
  Tache t3 = Tache("Faire un commit Git");

  print("Nombre total de tâches : ${Tache.nombreTotal}");
}