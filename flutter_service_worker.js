'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "527722cf7df5f97406bc13abfe76374e",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"version.json": "4af6d41c0da313abf993ebf364666f78",
"favicon.png": "a72fac2228d622e0420114d64f712f98",
"index.html": "4e967414bfa3d214d1660fce05357487",
"/": "4e967414bfa3d214d1660fce05357487",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/NOTICES": "456f7d47cbff7244f9133a229339154b",
"assets/AssetManifest.json": "f7c1eb7333a535d0fd7da4bc78264b48",
"assets/AssetManifest.bin.json": "d5231ab2a8edac141868a46fa358aedd",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/assets/logo/instagram.png": "f2166d80d8b67d478e8e1f31675c22a5",
"assets/assets/logo/rocket_logo.png": "88b7b76a71147b73d9fc568e74a27957",
"assets/assets/logo/kalo-blanco.png": "2778829194afa23a2542be9916469924",
"assets/assets/logo/search_logo.png": "020c8bc3afc0ee2de8da71fb51d6b08a",
"assets/assets/logo/linkedin.png": "695ce0d0060fe0f06e49a5808801ade6",
"assets/assets/logo/arrow.png": "1185f1678dc2cd7c74e2546758eac726",
"assets/assets/logo/crew_logo.png": "20155dd237f8f70ef7af741a4f7b6fda",
"assets/assets/logo/tiktok.png": "07e5b4500121711b177b72141ee00e8c",
"assets/assets/translations/en.json": "880226f7d97700f11030352d0e33a9da",
"assets/assets/translations/es.json": "02905da7ee63dc450a122be5daeacbe8",
"assets/assets/translations/example.svg": "e6152a1a626b5107ca0f792c959fb051",
"assets/assets/images/mobile_portal_under_construction.png": "2666c4963f44b63dced5e814ad73334b",
"assets/assets/images/technologies.png": "a76daefa0a2fe5752bfbfbf08fd661fb",
"assets/assets/images/neustroproceso_web_en.png": "8ac30328d170dc25c8435defadb3b71d",
"assets/assets/images/neustroproceso_web_es.png": "8550c648a19bba4b2b05a888ef3bb889",
"assets/assets/images/carousel_10.png": "6dfdacd48d8712d6efbc12ba510f7129",
"assets/assets/images/carousel_0.png": "421b587b128eb47f873bfe13455aac0b",
"assets/assets/images/developers_wave.png": "d491699be4ace01584e9b8fbfe019e42",
"assets/assets/images/carousel_1.png": "98ae1a84a983fa87c526e5fb54c892f3",
"assets/assets/images/features_2.png": "f0dcb79d3bcbad1447699fa5ccabd8d8",
"assets/assets/images/carousel_9.png": "9d5f0088af4481d02b8b97c370b6526b",
"assets/assets/images/methodology_wave.png": "16a6f313c83114c7e9192297eb781e9c",
"assets/assets/images/header.png": "574fd1f2fc3ba7df3d1048303bc7be49",
"assets/assets/images/carousel_7.png": "f469766efb4a16959d007e5ff2374554",
"assets/assets/images/trust_us_en.png": "e6e7e5326acad4b4e02e8eca574c5215",
"assets/assets/images/neustroproceso_mobile_es.png": "dfdee1eb30f428f7e39df58d6d4cfacc",
"assets/assets/images/neustroproceso_tablet_es.png": "e77678b6dd33f577f5b63f28963c93b5",
"assets/assets/images/carousel_4.png": "004265d9a5afcfe5733c04f70208c1ea",
"assets/assets/images/carousel_5.png": "efc13636df42587f24dfb1c6ab715814",
"assets/assets/images/girl_worry.png": "9ffaa1b22efe501790cde0ce73106c5e",
"assets/assets/images/kalo_dashboard.png": "2875d143853633352717b1b0f28f157a",
"assets/assets/images/shadow_methology.png": "af49d954325b7ebaa12599780fbbcc5d",
"assets/assets/images/carousel_8.png": "46150a873f0bd7b709958cffd16f7551",
"assets/assets/images/features_3.png": "ffaddbfbed02e9683dc1e01d1a5a6eff",
"assets/assets/images/trust_us_es.png": "1fe8488e169aecafbd055895178074b7",
"assets/assets/images/carousel_3.png": "e7d11532fd78a3e8f69c660b6eb3fbc2",
"assets/assets/images/carousel_6.png": "95c8625b78144f879a5afce6301e79ce",
"assets/assets/images/carousel_11.png": "b1bee667b58762c9f45d2bc9f83b5150",
"assets/assets/images/neustroproceso_tablet_en.png": "644bb7d245f485e49f76cabe82b4eb33",
"assets/assets/images/features_1.png": "1e1181a240051ec98d3cad776ec2909d",
"assets/assets/images/neustroproceso_mobile_en.png": "4974e4162f91c743af9815d0e6296edc",
"assets/assets/images/carousel_2.png": "c7cdaf094a4d9c8620a447574bd0c386",
"assets/assets/images/companies.png": "1fd63a24445a4765a12ece64794ecf90",
"assets/assets/images/phone.png": "f7268ec091b90849055b1eb0c2b3ec35",
"assets/assets/videos/header_video.mp4": "96625502be18c03d35b4c27738b8733d",
"assets/AssetManifest.bin": "953030fb852bc52d3b10898b3b4f1347",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"main.dart.js": "9c5bb50e70aced7d6d1241f838003b38"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
