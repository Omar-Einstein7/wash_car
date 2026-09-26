extension StringExtension on String {
  // Validators
  bool get isValidEmail {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this);
  }

  bool get isValidPhoneNumber {
    if (length > 16 || length < 9) return false;
    return RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
        .hasMatch(this);
  }

  bool get isValidUrl {
    return RegExp(
      r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&%\$#\=~_\-]+))*$",
    ).hasMatch(this);
  }

  // Formatters
  String get capitalizeFirst {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String get toTitleCase {
    if (isEmpty) return this;
    return split(' ').map((str) => str.capitalizeFirst).join(' ');
  }

  // Safe Parsers
  int? get toIntOrNull => int.tryParse(this);
  double? get toDoubleOrNull => double.tryParse(this);

  // Aliases
  bool get isPhoneNumber => isValidPhoneNumber;
  bool get isURL => isValidUrl;
  bool get isEmail => isValidEmail;

  // Privacy helpers
  String get maskEmail {
    if (!isEmail) return this;
    final parts = split('@');
    final name = parts[0];
    final domain = parts[1];
    if (name.length <= 2) return this;
    return '${name.substring(0, 2)}****@$domain';
  }
}

extension StringOptionalExtension on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
