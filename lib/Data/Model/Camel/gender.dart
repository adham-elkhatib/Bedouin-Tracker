enum Gender { male, female }

extension GenderName on Gender {
  String get name {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
    }
  }
}
