🦾 Portafolio Personal: Cyberpunk 2077 Edition 🌃

¡Hola y bienvenido! 👋 Este es mi portafolio personal inspirado en una de mis series animadas favoritas: Cyberpunk: Edgerunners 🏃💨.

Este proyecto destaca por sus múltiples características técnicas y visuales:

🚀 Características Principales

1. 🎨 Temas Dinámicos y Personalizables

Me basé en 3 personajes de la serie para las paletas de colores:

David Martinez 🧥 (Amarillo/Negro)

Lucy 🕸️ (Morado/Neón)

Rebecca 🔫 (Verde/Rojo)

¿Cómo funciona técnicamente? 🧠
Funciona gracias a theme_provider.dart y app_theme.dart (Gestor de Estado).

Mantiene en memoria el tema seleccionado comenzando en el índice 0.

Al presionar el botón, se ejecuta nextTheme() ⏭️, sumando 1 al índice.

Se invoca a notifyListeners() 📢 para actualizar la UI instantáneamente.

Las variables davidTheme, lucyTheme y rebeccaTheme definen propiedades como scaffoldBackgroundColor y acentos.

2. 🎵 Atmósfera Sonora

¡Ambiente inmersivo garantizado! Se integró música de fondo mediante assets locales 🎧, logrando una experiencia completa para el usuario.

3. 🏗️ Arquitectura Limpia (Clean Architecture)

La aplicación sigue el principio de separación de responsabilidades 📂. No mezclamos lógica con diseño:

Configuración: pubspec.yaml

Entrada: main.dart

UI: home_screen.dart, signature_screen.dart

Componentes: info_card.dart

4. 📱 Pantallas y Funcionalidad

🏠 home_screen.dart (UI Principal):

Muestra la foto de perfil desde assets locales 🖼️.

Utiliza Provider.of<ThemeProvider>(context) para cambiar el título dinámicamente según el tema 👆.

Gestiona la reproducción de música con AudioPlayer ▶️ (carga, loop, pausa/reanudar).

📄 signature_screen.dart (Credenciales):

Pantalla secundaria reactiva que muestra los datos del desarrollador, sincronizada con los colores del tema actual.

5. ⚡ Eficiencia y Navegación

El proyecto está diseñado bajo la filosofía KISS (Keep It Simple, Stupid):

Visual: Las pantallas (screens) solo se encargan de pintar datos 👁️.

Arranque: main.dart inyecta el MultiProvider 🔌 y define el tema inicial.

GPS del Proyecto: app_routes.dart 🗺️ asocia Strings (ej: "home") a pantallas, permitiendo una navegación limpia con `Navigator.pushNamed