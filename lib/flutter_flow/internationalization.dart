import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'k57e3r7z': {
      'es': 'Correo',
      'en': 'Email',
    },
    'ljlyrwfq': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'mmkp28r3': {
      'es': '¿Olvidó contraseña?',
      'en': 'Forgot password?',
    },
    'zikqipqi': {
      'es': 'Iniciar sesión',
      'en': 'Sign In',
    },
    'r8ev7go4': {
      'es': 'Registro',
      'en': 'Register',
    },
    '61awlizf': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // registro
  {
    '5agmsd78': {
      'es': 'Nombre',
      'en': 'First Name',
    },
    '6wxvzuvq': {
      'es': 'Apellido',
      'en': 'Last Name',
    },
    'dz44euqx': {
      'es': 'Correo',
      'en': 'Email',
    },
    'ogbz87lf': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    '5vg16xfz': {
      'es': 'Confirmar contraseña',
      'en': 'Confirm Password',
    },
    'fzqzkcxx': {
      'es': 'Campo requerido',
      'en': 'Field is required',
    },
    'wdvi8t4w': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the dropdown',
    },
    'bpxgx866': {
      'es': 'Campo requerido',
      'en': 'Field is required',
    },
    '2tlpckr3': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the dropdown',
    },
    'hsfel6hs': {
      'es': 'Campo requerido',
      'en': 'Field is required',
    },
    'gs75408n': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the dropdown',
    },
    'qmkun2l0': {
      'es': 'Campo requerido',
      'en': 'Field is required',
    },
    'cpbjhqge': {
      'es': 'Minimo 8 caracteres',
      'en': 'Min 8 Characters',
    },
    'kucidpm6': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the dropdown',
    },
    '3ilgqmcz': {
      'es': 'Campo requerido',
      'en': 'Field is required',
    },
    'k439b5eg': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the dropdown',
    },
    'h4vfkl08': {
      'es': 'Crear cuenta',
      'en': 'Create Account',
    },
    '6gtbv93h': {
      'es': 'Login',
      'en': 'Login',
    },
    'q5mt3kog': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Splash
  {
    'v3qhd9ch': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // LVAE
  {
    'ygry72vf': {
      'es': 'LVAE',
      'en': '',
    },
    'uu8ccgy8': {
      'es': 'EVERYTHING STARTS WITH A DREAM',
      'en': '',
    },
    'jdy28ix3': {
      'es':
          'Six years connecting the community with resources to help them achieve their educational goals',
      'en': '',
    },
    '6z2tyypx': {
      'es': 'About Us',
      'en': '',
    },
    'qyf4u70c': {
      'es':
          'Carlos Peralta along with Denise Fernandes founded La Via Al Éxito in 2015. Being the father of a high school at that time he was concerned with the lack of information in Spanish and the steps to follow in order to access higher education for the Latino community as well as the underserved. Carlos had questions such as how and where to apply to college and university, as well as the access to scholarships.\n\nWhat types of scholarships are available and the difference between federal and state aid, the importance of community service, the benefits of having higher grades, the difference between honors and advanced classes among others. However, the parents don’t have enough knowledge about the very important issues regarding the resources available for their children. La Via Al Exito makes a difference in the lives of parents and students who are looking for better opportunities and life for their children. We also want to help the parents to have the ability to get the resources that are available so they can achieve their own goals and fulfill their children dreams.',
      'en': '',
    },
    '7io0hdzu': {
      'es': 'Our Values',
      'en': '',
    },
    '505h6hb1': {
      'es': 'INTEGRITY',
      'en': '',
    },
    'un0su3nb': {
      'es':
          'On the road to success it is very important to be consistent with our actions and our example.  \nWe want to plant in our community and in our youth the great value of integrity.',
      'en': '',
    },
    'mztwu9cu': {
      'es': 'ETHICS',
      'en': '',
    },
    '21fr839m': {
      'es':
          'On the road to success we make sure to work in a manner consistent with our principles, ethics is part of our life and our mission as an organization.',
      'en': '',
    },
    'uqmejkft': {
      'es': 'EMPATHY',
      'en': '',
    },
    'eolb7kna': {
      'es':
          'On the road to success we definitely put ourselves in the shoes of the people we help.\nWe connect the community in such a way that we create a great network of mutual help.',
      'en': '',
    },
    '906trikt': {
      'es': 'EFFORT',
      'en': '',
    },
    'm684n109': {
      'es':
          'On the road to success we know that nothing happens without effort, discipline and education. We are professionals dedicated to building a strong and united community. Day by day we direct our efforts to create the path towards the opportunities that our community needs.',
      'en': '',
    },
    'berd7fan': {
      'es': 'CONTACTS',
      'en': '',
    },
    'gqadomgr': {
      'es': 'location',
      'en': '',
    },
    'j9zb0dfp': {
      'es': '345 Somerset Street Suite 9 North Plainfield,  New Jersey, 07060',
      'en': '',
    },
    'w8dy8i5r': {
      'es': 'E-mail',
      'en': '',
    },
    '1re2ks4b': {
      'es': 'contact@laviaalexito.com',
      'en': '',
    },
    'cpd1mu3f': {
      'es': 'Call us',
      'en': '',
    },
    'exgtuq3z': {
      'es': '732-3197-884',
      'en': '',
    },
    't5v1zrdv': {
      'es': 'Pulsa el mapa',
      'en': '',
    },
    'jvcyozto': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Donacion
  {
    'r96barky': {
      'es': 'Toma Acción AHORA',
      'en': 'Take Action NOW',
    },
    'iaq1vl97': {
      'es': 'Su donación puede ayudara una\npersona a tener un futuro mejor\n',
      'en': 'Your donation can help a\nperson to have a better future',
    },
    '2q4iu438': {
      'es': 'Dona Ahora',
      'en': 'Donate Now',
    },
    'anidb8kn': {
      'es': 'Sea un Voluntario\n',
      'en': 'Be a Volunteer',
    },
    '8sioubwz': {
      'es': 'Mas información',
      'en': 'More information',
    },
    'vomqh4ij': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Posts
  {
    'i5sexa1j': {
      'es': 'Comentarios ...',
      'en': 'Comments...',
    },
    '589zkx80': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // comentarios
  {
    'kei7xwf9': {
      'es': 'Título de la página',
      'en': 'Page Title',
    },
    '0wde4emr': {
      'es': 'Comentarios ...',
      'en': 'Comments...',
    },
    'mu5df62o': {
      'es': 'Comentario',
      'en': 'Comment',
    },
    'xwv6amyu': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // crete_post
  {
    'fvqawb9k': {
      'es': 'Crear post',
      'en': 'Create Post',
    },
    'xsmr22q6': {
      'es': 'Titulo:',
      'en': 'Title :',
    },
    't7hx7lju': {
      'es': 'Escribe aqui...',
      'en': 'Write Here....',
    },
    'w3hsir9z': {
      'es': 'Descripción:',
      'en': 'Desciption:',
    },
    'wmde3icm': {
      'es': 'Etiqueta aquí....',
      'en': 'Label Here....',
    },
    'u6mpg45d': {
      'es': 'Crear',
      'en': 'Create',
    },
    'n3nllntp': {
      'es': 'Título de la página',
      'en': 'Page Title',
    },
    'pzojq7zt': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // recoverPass
  {
    'ly2xv1pq': {
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña. Por favor ingrese el correo electrónico asociado con su cuenta a continuación.',
      'en':
          'We will send you an email with a link to reset your password. Please enter the email associated with your account below.',
    },
    'eabdw0iz': {
      'es': 'Introduce tu dirección de correo electrónico',
      'en': 'Enter your email address',
    },
    'bc63b8cj': {
      'es': 'Enviar',
      'en': 'Send',
    },
    '8gb93fj1': {
      'es': 'Recuperar contraseña',
      'en': 'Recover Password',
    },
    'bln0nq3g': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // settings
  {
    'op6yy1jy': {
      'es': 'Configuraciones',
      'en': '',
    },
    '4haodorv': {
      'es': 'Lenguaje:',
      'en': 'Language:',
    },
    'iw5c70m1': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Perfil
  {
    'ftzw2pyk': {
      'es': 'Editar perfil',
      'en': '',
    },
    '2lajx695': {
      'es': 'Cambiar contraseña',
      'en': '',
    },
    '99tm14ep': {
      'es': 'Configuraciones',
      'en': '',
    },
    '84rsiszk': {
      'es': 'Crear usuario LVAE',
      'en': '',
    },
    'zz7gpzli': {
      'es': 'Cerrar sesión',
      'en': '',
    },
    'gnefshje': {
      'es': 'Home',
      'en': '',
    },
  },
  // UpdateUser
  {
    'qbbp8bfz': {
      'es': 'Nombre',
      'en': '',
    },
    'lto9srjn': {
      'es': 'Apellido',
      'en': '',
    },
    '5uio01rv': {
      'es': 'Email',
      'en': '',
    },
    '3i9l64o7': {
      'es': 'Guardar cambios',
      'en': '',
    },
    '94n0mt5a': {
      'es': 'Actualiza tu perfil',
      'en': '',
    },
    'trsp2qwg': {
      'es': 'Home',
      'en': '',
    },
  },
  // RegistroLVAE
  {
    '5kt6907m': {
      'es': 'Nombre\n',
      'en': 'Email',
    },
    'ft7ogxxy': {
      'es': 'Correo',
      'en': 'Email',
    },
    'wqve2hc2': {
      'es': 'Field is required',
      'en': '',
    },
    '901jp46h': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hgdlhkgk': {
      'es': 'Field is required',
      'en': '',
    },
    'h0pzikgj': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tyy65yai': {
      'es': 'Field is required',
      'en': '',
    },
    'ur8qccbp': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'bewp2i27': {
      'es': 'Field is required',
      'en': '',
    },
    '39qoh0a1': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ct2vxtww': {
      'es': 'Field is required',
      'en': '',
    },
    'xvhp4tb6': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'qhzw5r8m': {
      'es': 'Otorgar permisos',
      'en': 'Create Account',
    },
    '4yr2dtxw': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // AddChatUsersPage
  {
    '7bud3n7n': {
      'es': 'Add Friends to chat',
      'en': '',
    },
    'z2532rp6': {
      'es': 'Select the friends to add to chat.',
      'en': '',
    },
    'c56i5r3m': {
      'es': 'Invite to Chat',
      'en': '',
    },
  },
  // chat_intermedio
  {
    'awqiz2vq': {
      'es': 'Escribe tu mensaje',
      'en': '',
    },
    '7ceqz4w6': {
      'es': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'calc3wj8': {
      'es':
          'Para tomar una foto o grabar un video, esta aplicación requiere permiso para acceder a la cámara.',
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
    },
    '127waual': {
      'es':
          'Para cargar datos, esta aplicación requiere permiso para acceder a la biblioteca de fotos',
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
    },
    '739yv5lz': {
      'es': 'hola',
      'en': '',
    },
    'jsj1lf2t': {
      'es': 'Error',
      'en': 'Error:[error]',
    },
    '0mn5crzy': {
      'es': '¡Se envió un correo electrónico para restablecer la contraseña!',
      'en': 'Password reset email sent!',
    },
    'vy2riaww': {
      'es': 'Correo requerido',
      'en': 'Email required!',
    },
    '2xiitfre': {
      'es': 'Numero de telefono requerido y debe empezar por +.',
      'en': 'Phone number required and has to start with +.',
    },
    'xvzbi18s': {
      'es': 'La contraseña no coincide',
      'en': 'Passwords don\'t match',
    },
    '57qw36y6': {
      'es': 'Ingrese el código de verificación por SMS',
      'en': 'Enter SMS verification code',
    },
    'pq42j767': {
      'es':
          'Demasiado tiempo desde el último inicio de sesión. Inicie sesión nuevamente antes de eliminar su cuenta.',
      'en':
          'Too long since most recent sign in. Sign in again before deleting your account.',
    },
    '7383bgz1': {
      'es':
          'Ha pasado demasiado tiempo desde el inicio de sesión más reciente. Inicie sesión nuevamente antes de actualizar su correo electrónico.',
      'en':
          'Too long since most recent sign in. Sign in again before updating your email.',
    },
    'ikfpjsur': {
      'es': 'Correo electrónico de confirmación de cambio enviado!',
      'en': 'Email change confirmation email sent!',
    },
    '2m1a1xib': {
      'es': 'Formato de archivo invalido',
      'en': 'Invalid file format',
    },
    'uxhbgqz1': {
      'es': 'Subiendo archivo...',
      'en': 'Uploading file...',
    },
    'hdhwlm0j': {
      'es': 'Completado!',
      'en': 'Success!',
    },
    'wrar8ssx': {
      'es': 'Error en cargar los datos',
      'en': 'Failed to upload data',
    },
    'cec88l9z': {
      'es': '',
      'en': '',
    },
    'r4i5t81h': {
      'es': 'Elige la fuente',
      'en': 'Choose Source',
    },
    'otxgdb40': {
      'es': 'Galeria',
      'en': 'Gallery',
    },
    'aw2gkbya': {
      'es': 'Galeria(fotos)',
      'en': 'Gallery(Photo)',
    },
    '1pp8pllx': {
      'es': 'Galeria(Video)',
      'en': 'Galeria(Video)',
    },
    'ts41ltxz': {
      'es': 'Camara',
      'en': 'Camera',
    },
    'in3gmnb2': {
      'es': '',
      'en': '',
    },
    'li0rmlrj': {
      'es': '',
      'en': '',
    },
    'xpoddxre': {
      'es': '',
      'en': '',
    },
    'j317va1l': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
