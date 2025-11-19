import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';
import '../providers/theme_provider.dart';
import '../widgets/info_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    _initMusic();
  }

  Future<void> _initMusic() async {
    _audioPlayer = AudioPlayer();

    await _audioPlayer.setReleaseMode(ReleaseMode.loop);

    await _audioPlayer.play(AssetSource('music/soundtrack.mp3'));

    await _audioPlayer.setVolume(0.5);
  }

  void _toggleMusic() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.resume();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final currentColors = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('PORTAFOLIO CYBERPUNK'),
        actions: [
          IconButton(
            icon: Icon(_isPlaying ? Icons.volume_up : Icons.volume_off),
            onPressed: _toggleMusic,
            tooltip: 'Música de fondo',
          ),
          IconButton(
            icon: const Icon(Icons.qr_code_2),
            onPressed: () => Navigator.pushNamed(context, 'signature'),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          themeProvider.nextTheme();
        },
        icon: const Icon(Icons.palette),
        label: const Text('Cambiar Tema'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                themeProvider.themeName.toUpperCase(),
                style: TextStyle(
                  color: currentColors.primaryColor,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentColors.primaryColor,
                ),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/noelling.png'),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'FABRIZIO MARCHIORO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              Text(
                '[ AReS ]',
                style: TextStyle(
                  fontSize: 20,
                  color: currentColors.primaryColor,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 30),

              const InfoCard(
                title: 'PERFIL',
                icon: Icons.person_pin,
                content:
                    'Tengo 19 años y soy estudiante de Ingeniería de Sistemas en UNIMAR. Me defino como alguien que busca aprender algo nuevo todos los días. Mi visión a futuro es especializarme en Bases de Datos.',
              ),

              const InfoCard(
                title: 'ACTIVIDADES',
                icon: Icons.directions_bike,
                content:
                    '• Ciclismo de ruta\n• Natación competitiva\n• Investigación tecnológica',
              ),

              const InfoCard(
                title: 'GAMING',
                icon: Icons.gamepad,
                content: '• Fallout: New Vegas\n• Deltarune\n• Destiny 2',
              ),

              const SizedBox(height: 20),
              Divider(color: currentColors.primaryColor),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'CONTACTAR A AReS',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
              ),

              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'Escribe un mensaje...',
                  alignLabelWithHint: true,
                  suffixIcon: Icon(
                    Icons.send,
                    color: currentColors.primaryColor,
                  ),
                ),
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
