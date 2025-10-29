class Accommodation {
  final String title; // Ej: "Habitación en Universidad"
  final DateTime checkInDate; // Ej: 2025-12-26
  final DateTime checkOutDate; // Ej: 2025-12-28
  final String hostType; // Ej: "Anfitrión particular"
  final double priceTotal; // Ej: 98.0
  final int nights; // Ej: 2
  final double rating; // Ej: 4.94
  final String imageUrl; // URL o asset de la imagen
  final String label; // Ej: "Recomendación del viajero"

  Accommodation({
    required this.title,
    required this.checkInDate,
    required this.checkOutDate,
    required this.hostType,
    required this.priceTotal,
    required this.nights,
    required this.rating,
    required this.imageUrl,
    required this.label,
  });
}
