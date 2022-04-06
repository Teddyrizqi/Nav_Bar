import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.movie,
              text: 'Anime Summer 2021',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.movie,
              text: 'Anime Fall 2021',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.movie,
              text: 'Anime Winter 2022',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.access_time_rounded, text: 'Recent', onTap: () => print('Recent')),
          _drawerItem(icon: Icons.bookmark, text: 'Bookmark', onTap: () => print('Bookmark')),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage("img/Taishou-Otome.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text("Belajar Navbar Flutter"),
      accountEmail: Text("AniMania@gmail.com"),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

class summer extends StatelessWidget {
  final List<String> image = [
    'img/summer/tensura.jpg',
    'img/summer/kobayasi-san.jpg',
    'img/summer/tanmosi.jpg',
    'img/summer/vanitas.webp',
    'img/summer/Shinigami-Bocchan.webp',
    'img/summer/aquatope.jpg',
    'img/summer/re-main.jpg',
    'img/summer/kanojo-mo-kanojo.jpg',
    'img/summer/Sonny-boy.jpg',
    'img/summer/belle.jpg',
  ];

  final List<String> title = [
    'Tensei shitara Slime Datta Ken 2nd Season Part 2',
    'Kobayashi-san Chi no Maid Dragon S',
    'Tantei wa Mou, Shideiru',
    'Vanitas no Karte',
    'Shinigami Bocchan to Kuro Maid',
    'Shiroi Suna no Aquatope',
    'Re-Main',
    'Kanojo mo Kanojo',
    'Sonny Boy',
    'Ryuu to Sobakasu no Hime',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LIST ANIME SUMMER 2021"),
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                image[index],
                fit: BoxFit.cover,
              )),
              subtitle: Text(title[index], style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}

class fall extends StatelessWidget {
  final List<String> image = [
    'img/fall/KNY_MugenTrain.jpg',
    'img/fall/Komi-san.jpg',
    'img/fall/takt-opdestiny.jpg',
    'img/fall/ousama-ranking.jpg',
    'img/fall/sekai-saikyou.webp',
    'img/fall/mieruko-chan.jpg',
    'img/fall/senpai-ga-uzai.jpg',
    'img/fall/Taishou-Otome.jpg',
    'img/fall/cover-selection-project.jpg',
    'img/fall/jjk-movie.jpg',
  ];

  final List<String> title = [
    'Kimetsu no Yaiba : Mugen Ressha-hen',
    'Komi-san wa, Comyushou desu',
    'Takt Op. Destiny',
    'Ousama Ranking',
    'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru',
    'Mieruko-chan',
    'Senpai ga Uzai Kouhai no Hanashi',
    'Taishou Otome Otogibanashi',
    'Selection Project',
    'Jujutsu Kaisen 0 Movie',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LIST ANIME FALL 2021"),
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                image[index],
                fit: BoxFit.cover,
              )),
              subtitle: Text(title[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}

class winter extends StatelessWidget {
  final List<String> image = [
    'img/winter/KNY-yuukaku-hen.jpg',
    'img/winter/sono-bisque.jpg',
    'img/winter/tensai-ouji.jpg',
    'img/winter/sabikui.webp',
    'img/winter/akebi-chan.jpg',
    'img/winter/leadale-cayna.jpg',
    'img/winter/tokyo-24ku.jpg',
    'img/winter/slow-loop.webp',
    'img/winter/rymans-club.jpg',
    'img/winter/koroshi-ai.jpg',
  ];

  final List<String> title = [
    'Kimetsu no Yaiba : Yuukaku-hen',
    'Sono Bisque Doll wa koi wo Suru',
    'Tensai Ouji no Akaji Kokka Saisei Jutsu',
    'Sabikui Bisco',
    'Akebi-chan no Sailor-fuku',
    'Leadale no Daichi nite',
    'Tokyo 24-ku',
    'Slow Loop',
    "Ryman's Club",
    'Koroshi Ai',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LIST ANIME WINTER 2022"),
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                image[index],
                fit: BoxFit.cover,
              )),
              subtitle: Text(title[index], style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
