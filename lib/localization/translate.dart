import 'package:get/get.dart';
import 'package:skillconnect_app/localization/translation_keys.dart';

class Translation {
  static Translation? _it;
  static Translation instance() {
    return _it ??= Translation();
  }

  String get profileView {
    return TranslationKeys.profileView.tr;
  }

  String get summary {
    return TranslationKeys.summary.tr;
  }

  String get workExperience {
    return TranslationKeys.workExperience.tr;
  }

  String get skills {
    return TranslationKeys.skills.tr;
  }

  String get jobPortfolio {
    return TranslationKeys.jobPortfolio.tr;
  }

  String get ratingsAndReview {
    return TranslationKeys.ratingsAndReview.tr;
  }

  String get seeMore {
    return TranslationKeys.seeMore.tr;
  }

  String get writeReview {
    return TranslationKeys.writeReview.tr;
  }

  String get experience {
    return TranslationKeys.experience.tr;
  }

  String get sendMessage {
    return TranslationKeys.sendMessage.tr;
  }

  String get joinDate {
    return TranslationKeys.joinDate.tr;
  }

  String get completedJobs {
    return TranslationKeys.completedJobs.tr;
  }

  String get lastSeen {
    return TranslationKeys.lastSeen.tr;
  }
}
