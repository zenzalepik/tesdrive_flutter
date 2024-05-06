'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"aplikasi.html": "740952f6ecaabd680890060afda30c85",
"assets/AssetManifest.bin": "d2f9a38eb1afcc9494ebfa943e33a1d2",
"assets/AssetManifest.bin.json": "89c094ea1b013369b0110c63df8d5cc2",
"assets/AssetManifest.json": "adc18250122fb80b2ccc4411b4abf394",
"assets/assets/fonts/Inter-Black.ttf": "118c5868c7cc1370fcf5a1fc2f569883",
"assets/assets/fonts/Inter-Bold.ttf": "ba74cc325d5f67d0efbeda51616352db",
"assets/assets/fonts/Inter-ExtraBold.ttf": "72ac147c98056996b2a31e95a56d6e66",
"assets/assets/fonts/Inter-ExtraLight.ttf": "7a177fa21fece72dfaa5639d8f1c114a",
"assets/assets/fonts/Inter-Light.ttf": "a3fe4e0f9fdf3119c62a34b1937640dd",
"assets/assets/fonts/Inter-Medium.ttf": "cad1054327a25f42f2447d1829596bfe",
"assets/assets/fonts/Inter-Regular.ttf": "ea5879884a95551632e9eb1bba5b2128",
"assets/assets/fonts/Inter-SemiBold.ttf": "465266b2b986e33ef7e395f4df87b300",
"assets/assets/fonts/Inter-Thin.ttf": "4558ff85abeab91af24c86aab81509a7",
"assets/assets/fonts/Schoolbell-Regular.ttf": "4a7aed80c0ff6252887385d72a3fd7e7",
"assets/assets/images/halaman%2520materi.png": "7a42db307b0e93590c65ece3cc3b3650",
"assets/assets/images/img_bg_home.png": "cb1162aab5263aa295ac12fd9eddc235",
"assets/assets/images/img_cloud.png": "d328265ebd71911b4a5dedc93fc0cd5d",
"assets/assets/images/img_kuis_level_1.png": "5ad7ec112ec696d0afb683e553cf6332",
"assets/assets/images/img_kuis_level_1_locked.png": "cf6042d9eac8184250a8748418069a90",
"assets/assets/images/img_kuis_level_2.png": "be310a0b40fa3aa6669ab9d5e370294c",
"assets/assets/images/img_kuis_level_2_locked.png": "82aea2e4bc8037ede3ad295c5dc3eb47",
"assets/assets/images/img_kuis_level_3.png": "dbba07f541d39e060f8d71f7cdea5050",
"assets/assets/images/img_kuis_level_3_locked.png": "b05ad3296a4044ec7f658944529b58e5",
"assets/assets/images/img_kuis_level_4.png": "54c04c5c6c5ff0dbc36b14e8092ecbb6",
"assets/assets/images/img_kuis_level_4_locked.png": "45caa5eeea145dec0090b5a87e611b18",
"assets/assets/images/img_kuis_level_5.png": "a2addc91285ab83db0c24bcb3da1a2f2",
"assets/assets/images/img_kuis_level_5_locked.png": "fdab9a29b1cf661f95ea961dc33b26f6",
"assets/assets/images/img_kuis_level_6.png": "daf1ad70ff97e6e7598d869b8b2f2a13",
"assets/assets/images/img_kuis_level_6_locked.png": "401fd8d6c76cb499eea0dc04ec79bdf1",
"assets/assets/images/img_logo_lembaga.png": "b3178c7ae45d38791a58c1b9d68b1467",
"assets/assets/images/img_menu_materi_kup.png": "2917ce1061e8fd664923695d7a44ade7",
"assets/assets/images/img_menu_materi_npwp.png": "fbcf6da53f42d7f26147055ae5da7e66",
"assets/assets/images/img_menu_materi_pph.png": "880365419dd2e2df4f660c7850668171",
"assets/assets/images/img_menu_materi_spt.png": "54c638a294ffad4ffc2a2731952cb765",
"assets/assets/images/img_npwp.png": "ca877b483ff5d02cb5c5ec7bf2e66c56",
"assets/assets/images/img_planet_biru.png": "3dabcc7de32f118b25ff209596673c5e",
"assets/assets/images/img_planet_bumi.png": "5ea5d205682cdf912fb5f71f95c8b1b6",
"assets/assets/images/img_planet_kuning.png": "90287eb30444df16c78702135f907e28",
"assets/assets/images/img_planet_orange.png": "953b7c48f964710290fffa5d05e0ed15",
"assets/assets/images/img_planet_purple.png": "9d3e683f21d54c1216f5f022d88f6ca6",
"assets/assets/images/img_stone.png": "13954cc99b0f507a6f97c02a463d45e9",
"assets/assets/images/img_tombol_kuis_locked.png": "541ce229b5e4c39dedf33a236e0b214e",
"assets/assets/images/svg/img_planets.svg": "d6896320f7dc2e735d382048b647a3ba",
"assets/assets/images/svg/astronot.svg": "5c93cc705425beafc305060681e7bd64",
"assets/assets/images/svg/img_astronot.svg": "43f8541c55908c9b4d0ff9784faf107f",
"assets/assets/images/svg/img_back.svg": "cc3e0b3cc8b334676a5d72eb5e9c79e7",
"assets/assets/images/svg/img_bintang.svg": "2adb98ec44f3178c11e0b82def9f79d9",
"assets/assets/images/svg/img_bintang0.svg": "a1b379e16633132c200fa0d285218255",
"assets/assets/images/svg/img_bintang1.svg": "f988ae7e2c46b5afc1138f48c591526d",
"assets/assets/images/svg/img_bintang2.svg": "e8c1276e5f8aeb65bc2b800311d97a61",
"assets/assets/images/svg/img_bintang3.svg": "4b6ad8385aa3f6d28afb0b90b2c1d1d1",
"assets/assets/images/svg/img_home.svg": "39959f5421ede2a981a79e481f3ef7e2",
"assets/assets/images/svg/img_kd_ipk_bintang0.svg": "fc0dca9ae1328c25a66003ccfdeefa34",
"assets/assets/images/svg/img_kd_ipk_bintang1.svg": "168ab564f002f5457645ed20708dff38",
"assets/assets/images/svg/img_kd_ipk_bintang2.svg": "ee8e1a56bf3eeb22a84b09543b60b16d",
"assets/assets/images/svg/img_kd_ipk_bintang3.svg": "4b598a37a5f7cba417dd7423bd43a455",
"assets/assets/images/svg/img_menu_close.svg": "503f6f21c47335179b8b509c4048c650",
"assets/assets/images/svg/img_menu_drawer.svg": "a1ec7d5b121f534a87c4d80378cfa4ed",
"assets/assets/images/svg/img_menu_home.svg": "0eca98d154372a1205c2ec611b016f72",
"assets/assets/images/svg/img_meteor_1.svg": "cfa914c9a553c6a078d9fcd74451eefb",
"assets/assets/images/svg/img_planet_biru.svg": "62e7c5d8bb295565747353831d6dabd7",
"assets/assets/images/svg/img_planet_bumi.svg": "7c9e9d8c133d0ab1532d0572844c76fe",
"assets/assets/images/svg/img_planet_kuning.svg": "6457e7918400b56e3fc8b734aef817d9",
"assets/assets/images/svg/img_planet_nepton.svg": "90d5f78a885db994a35e008a849eccfc",
"assets/assets/images/svg/img_planet_orange.svg": "f5b96e353b76c985b122a81332a6b882",
"assets/assets/images/svg/img_planet_purple.svg": "0b1ffaa62a4c95473439ae658901b0e4",
"assets/assets/images/svg/img_plane_space.svg": "f73bbda6720022bd4bf5900cd8d94893",
"assets/assets/images/svg/img_rocket.svg": "8336b0e1a7b29537f077c81f8a4cce37",
"assets/assets/images/svg/img_rocket_atronot.svg": "672157327aaf693c40fe7ee08c57b32e",
"assets/assets/images/svg/img_stone.svg": "8ab7439de2b05034e07b89d91a86e0bf",
"assets/assets/images/svg/img_stone_1.svg": "1f2ab50d4c962630c5d188a5caa0b402",
"assets/assets/images/svg/img_tombol_kembali.svg": "ad51a8b7603e8e63ad9c4a9ba21df1de",
"assets/assets/images/svg/img_tombol_kuis.svg": "c2a6c95e517ce84f27876e62ccd97a22",
"assets/assets/images/svg/img_tombol_lanjut.svg": "c5ab1332960661aed7415429290bf5bb",
"assets/assets/images/svg/img_tombol_materi.svg": "d91418c6b8fe0bab9373e05efb36fcc2",
"assets/assets/images/svg/img_tombol_selesai.svg": "af4e467f9def5b3b63a2cbba11b9c379",
"assets/assets/images/svg/img_tombol_ujian.svg": "5ab740725c2788c4887dced50bacbb4a",
"assets/FontManifest.json": "ea882bb154404e68311b4ca153486e7a",
"assets/fonts/MaterialIcons-Regular.otf": "8810328eca60081ca6446c587aff44be",
"assets/NOTICES": "035dc8bc82eef3a0d8d88aa7c8bd129b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/flutter_inappwebview_web/assets/web/web_support.js": "ffd063c5ddbbe185f778e7e41fdceb31",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e15f958e4d927eeacf8f67638fd72fe3",
"/": "e15f958e4d927eeacf8f67638fd72fe3",
"main.dart.js": "508d2451de046e75a75ae01214b95c85",
"manifest.json": "64230c13385b3507457d4aa83b9239be",
"version.json": "48545bad1b0578d15ca02845823083dd"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
