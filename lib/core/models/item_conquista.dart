class ItemConquista {
  String titulo;
  String texto;
  double progress_atual;
  double progress_total;
  String url_imagem;

  ItemConquista(
      {this.titulo,
      this.texto,
      this.progress_atual,
      this.progress_total,
      this.url_imagem});
}

var itensConquista = [
  ItemConquista(
      titulo: "Fogueira",
      texto: "Próximo nível: \nMantenha uma ofensiva por 30 dias",
      progress_atual: 3,
      progress_total: 30,
      url_imagem: "assets/icons/item_conquista_1.png"),
  ItemConquista(
      titulo: "Campeão",
      texto: "Você ganhou isto por concluir um curso",
      progress_atual: 0,
      progress_total: 0,
      url_imagem: "assets/icons/item_conquista_2.png")
];
