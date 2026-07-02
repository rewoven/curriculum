defmodule RewovenCurriculum.I18n do
  @moduledoc """
  Lightweight i18n for the curriculum.

  Two layers:

  1. UI chrome strings — the ~20 interface strings (nav, buttons, labels),
     hand-translated below in `@strings`.
  2. Content — full lesson/course translations living in
     `RewovenCurriculum.Content.*` modules (one per locale), generated
     offline and looked up with English fallback.

  Locale comes from `?lang=xx` (persisted in the session) via
  `RewovenCurriculumWeb.Plugs.SetLocale`.
  """

  @locales [
    %{code: "en", name: "English", dir: "ltr"},
    %{code: "ar", name: "العربية", dir: "rtl"},
    %{code: "hi", name: "हिन्दी", dir: "ltr"},
    %{code: "fr", name: "Français", dir: "ltr"},
    %{code: "es", name: "Español", dir: "ltr"},
    %{code: "tl", name: "Filipino", dir: "ltr"}
  ]

  @codes Enum.map(@locales, & &1.code)

  def locales, do: @locales
  def default, do: "en"
  def valid?(code), do: code in @codes

  def dir(code) do
    case Enum.find(@locales, &(&1.code == code)) do
      nil -> "ltr"
      loc -> loc.dir
    end
  end

  @strings %{
    nav_home: %{
      "en" => "Home",
      "ar" => "الرئيسية",
      "hi" => "होम",
      "fr" => "Accueil",
      "es" => "Inicio",
      "tl" => "Home"
    },
    nav_quiz: %{
      "en" => "Quiz",
      "ar" => "الاختبار",
      "hi" => "क्विज़",
      "fr" => "Quiz",
      "es" => "Quiz",
      "tl" => "Quiz"
    },
    nav_account: %{
      "en" => "Account",
      "ar" => "الحساب",
      "hi" => "खाता",
      "fr" => "Compte",
      "es" => "Cuenta",
      "tl" => "Account"
    },
    hero_title_a: %{
      "en" => "The Rewoven",
      "ar" => "منهج",
      "hi" => "Rewoven",
      "fr" => "Le programme",
      "es" => "El plan de estudios",
      "tl" => "Kurikulum ng"
    },
    hero_title_b: %{
      "en" => "Curriculum",
      "ar" => "Rewoven",
      "hi" => "पाठ्यक्रम",
      "fr" => "Rewoven",
      "es" => "Rewoven",
      "tl" => "Rewoven"
    },
    hero_tagline: %{
      "en" =>
        "Eight full courses on circular economy, fast fashion, the people who make our clothes, and more.",
      "ar" =>
        "ثمانية مساقات كاملة عن الاقتصاد الدائري والموضة السريعة والأشخاص الذين يصنعون ملابسنا والمزيد.",
      "hi" => "सर्कुलर इकॉनमी, फ़ास्ट फ़ैशन, हमारे कपड़े बनाने वाले लोगों और बहुत कुछ पर आठ पूरे कोर्स।",
      "fr" =>
        "Huit cours complets sur l'économie circulaire, la fast fashion, les personnes qui fabriquent nos vêtements, et plus encore.",
      "es" =>
        "Ocho cursos completos sobre economía circular, moda rápida, las personas que hacen nuestra ropa y más.",
      "tl" =>
        "Walong buong kurso tungkol sa circular economy, fast fashion, sa mga taong gumagawa ng ating mga damit, at higit pa."
    },
    courses_word: %{
      "en" => "courses",
      "ar" => "مساقات",
      "hi" => "कोर्स",
      "fr" => "cours",
      "es" => "cursos",
      "tl" => "kurso"
    },
    lessons_word: %{
      "en" => "lessons",
      "ar" => "درسًا",
      "hi" => "पाठ",
      "fr" => "leçons",
      "es" => "lecciones",
      "tl" => "aralin"
    },
    pricing_note: %{
      "en" => "$4.99/mo - free during soft launch",
      "ar" => "‏4.99$ شهريًا — مجاني خلال الإطلاق التجريبي",
      "hi" => "$4.99/माह — सॉफ्ट लॉन्च के दौरान मुफ़्त",
      "fr" => "4,99 $/mois — gratuit pendant le lancement",
      "es" => "4,99 $/mes — gratis durante el lanzamiento",
      "tl" => "$4.99/buwan — libre habang soft launch"
    },
    end_of_lesson_quizzes: %{
      "en" => "End-of-lesson quizzes",
      "ar" => "اختبارات نهاية الدرس",
      "hi" => "पाठ के अंत की क्विज़",
      "fr" => "Quiz de fin de leçon",
      "es" => "Cuestionarios al final de cada lección",
      "tl" => "Pagsusulit sa dulo ng aralin"
    },
    all_courses: %{
      "en" => "All courses",
      "ar" => "جميع المساقات",
      "hi" => "सभी कोर्स",
      "fr" => "Tous les cours",
      "es" => "Todos los cursos",
      "tl" => "Lahat ng kurso"
    },
    curriculum_word: %{
      "en" => "Curriculum",
      "ar" => "المنهج",
      "hi" => "पाठ्यक्रम",
      "fr" => "Programme",
      "es" => "Plan de estudios",
      "tl" => "Kurikulum"
    },
    key_takeaways: %{
      "en" => "Key takeaways",
      "ar" => "أهم النقاط",
      "hi" => "मुख्य बातें",
      "fr" => "À retenir",
      "es" => "Ideas clave",
      "tl" => "Mahahalagang punto"
    },
    try_this: %{
      "en" => "Try this",
      "ar" => "جرّب هذا",
      "hi" => "इसे आज़माएँ",
      "fr" => "À toi de jouer",
      "es" => "Inténtalo",
      "tl" => "Subukan mo ito"
    },
    end_question_label: %{
      "en" => "End-of-lesson question",
      "ar" => "سؤال نهاية الدرس",
      "hi" => "पाठ के अंत का प्रश्न",
      "fr" => "Question de fin de leçon",
      "es" => "Pregunta final de la lección",
      "tl" => "Tanong sa dulo ng aralin"
    },
    previous_label: %{
      "en" => "Previous",
      "ar" => "السابق",
      "hi" => "पिछला",
      "fr" => "Précédent",
      "es" => "Anterior",
      "tl" => "Nakaraan"
    },
    next_label: %{
      "en" => "Next",
      "ar" => "التالي",
      "hi" => "अगला",
      "fr" => "Suivant",
      "es" => "Siguiente",
      "tl" => "Susunod"
    },
    start_of_course: %{
      "en" => "Start of course",
      "ar" => "بداية المساق",
      "hi" => "कोर्स की शुरुआत",
      "fr" => "Début du cours",
      "es" => "Inicio del curso",
      "tl" => "Simula ng kurso"
    },
    course_complete: %{
      "en" => "Course complete",
      "ar" => "أكملت المساق",
      "hi" => "कोर्स पूरा",
      "fr" => "Cours terminé",
      "es" => "Curso completado",
      "tl" => "Tapos na ang kurso"
    },
    back_to_course: %{
      "en" => "Back to course",
      "ar" => "العودة إلى المساق",
      "hi" => "कोर्स पर वापस जाएँ",
      "fr" => "Retour au cours",
      "es" => "Volver al curso",
      "tl" => "Bumalik sa kurso"
    },
    coming_soon: %{
      "en" => "This lesson is coming soon. Check back next week!",
      "ar" => "هذا الدرس قادم قريبًا. عد للتحقق الأسبوع المقبل!",
      "hi" => "यह पाठ जल्द आ रहा है। अगले हफ़्ते फिर देखें!",
      "fr" => "Cette leçon arrive bientôt. Reviens la semaine prochaine !",
      "es" => "Esta lección llegará pronto. ¡Vuelve la próxima semana!",
      "tl" => "Malapit nang dumating ang araling ito. Balikan mo sa susunod na linggo!"
    },
    footer_service: %{
      "en" => "service",
      "ar" => "خدمة من",
      "hi" => "की एक सेवा",
      "fr" => "Un service",
      "es" => "Un servicio de",
      "tl" => "Isang serbisyo ng"
    },
    manage_subscription: %{
      "en" => "Manage subscription",
      "ar" => "إدارة الاشتراك",
      "hi" => "सदस्यता प्रबंधित करें",
      "fr" => "Gérer l'abonnement",
      "es" => "Gestionar suscripción",
      "tl" => "Pamahalaan ang subscription"
    },
    mark_complete: %{
      "en" => "Mark lesson complete",
      "ar" => "وضع علامة اكتمال الدرس",
      "hi" => "पाठ पूरा हुआ चिह्नित करें",
      "fr" => "Marquer la leçon comme terminée",
      "es" => "Marcar lección como completada",
      "tl" => "Markahang tapos ang aralin"
    },
    completed_label: %{
      "en" => "Completed",
      "ar" => "مكتمل",
      "hi" => "पूरा हुआ",
      "fr" => "Terminée",
      "es" => "Completada",
      "tl" => "Tapos na"
    },
    language_label: %{
      "en" => "Language",
      "ar" => "اللغة",
      "hi" => "भाषा",
      "fr" => "Langue",
      "es" => "Idioma",
      "tl" => "Wika"
    },
    meta_description: %{
      "en" => "Eight full sustainability courses for students — from Rewoven.",
      "ar" => "ثمانية مساقات كاملة في الاستدامة للطلاب — من Rewoven.",
      "hi" => "छात्रों के लिए स्थिरता पर आठ पूरे कोर्स — Rewoven की ओर से।",
      "fr" => "Huit cours complets sur la durabilité pour les élèves — par Rewoven.",
      "es" => "Ocho cursos completos de sostenibilidad para estudiantes — de Rewoven.",
      "tl" => "Walong buong kurso sa sustainability para sa mga estudyante — mula sa Rewoven."
    }
  }

  @doc "Translate a UI string. Falls back to English, then to the key itself."
  def t(locale, key) do
    case Map.get(@strings, key) do
      nil -> to_string(key)
      per_locale -> Map.get(per_locale, locale) || Map.get(per_locale, "en") || to_string(key)
    end
  end
end
