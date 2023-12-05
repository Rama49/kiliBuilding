'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/analyse.png": "69c685448ccc3310865f114df0ff7760",
"assets/arrow.png": "3583c1ad3391959ee6257d1b3550d8a0",
"assets/AssetManifest.bin": "559d16dcabafa5c1cce0bd1f0b0726cd",
"assets/AssetManifest.bin.json": "2965acb54e2fba08ba7ebbea72cbbe30",
"assets/AssetManifest.json": "430797f6597a2ceafee1ff2948a18950",
"assets/assets/analyse.png": "69c685448ccc3310865f114df0ff7760",
"assets/assets/arrow.png": "3583c1ad3391959ee6257d1b3550d8a0",
"assets/assets/bakeliTech.png": "cc9edb3284de6763ecf081b314e62478",
"assets/assets/blog.png": "467c0d79ce7ba0a97e8ba6af7b99e9ac",
"assets/assets/bouton.png": "d5f55ce546e619b268d7a45a73aad440",
"assets/assets/cad.png": "8db7d555ea1545717edc4248532ab475",
"assets/assets/clockcomputer.png": "81e3159b059616685c9575e67ec66d3f",
"assets/assets/dashboard.png": "c823e3ebbdd5cb3ed6e3f9f80e96f891",
"assets/assets/detailcomposant.png": "3c1bf3019d068da85306e8447cd2a4f1",
"assets/assets/details.png": "1a280ae725a0bee781d0ccc559a3b5f1",
"assets/assets/easymembership.png": "61c8b318f3c82768a36260c7b263a4f3",
"assets/assets/Ellipse1.png": "2a81e98bafa4d54ebb62d28635bcab9a",
"assets/assets/Facebook.png": "9510002e602be695fb936dc4377ec0f7",
"assets/assets/fgfd.png": "86cf6ef517f2f266aded3fc7ed6fc8f7",
"assets/assets/google.png": "f0fa3b82721e8ce11056a2a34db4f526",
"assets/assets/Group.png": "be1ddf76eba582588f0ba31bf5bb910c",
"assets/assets/Group5.png": "14034e45d40cb3e3043d39839fbfb30b",
"assets/assets/imageleft.png": "ed9a86f8198b00f3d093edcbed316f47",
"assets/assets/img1.png": "e6c9f4022b34d0afcb339d1ccf02de38",
"assets/assets/img2.png": "69c685448ccc3310865f114df0ff7760",
"assets/assets/img3.png": "c7dae3dd2f930d5c28c32510b015ee34",
"assets/assets/img4.png": "467c0d79ce7ba0a97e8ba6af7b99e9ac",
"assets/assets/input.png": "8702573c007030a73861e5f393adf236",
"assets/assets/Instagram.png": "bc872ddb1ece9c501069251a18bcebeb",
"assets/assets/keurYeurmande.png": "c10b186695b07d6492cfe4f05eb7d6e3",
"assets/assets/kiliappbuilder.png": "ba238e3470add60b0fbfb570bfe2069a",
"assets/assets/LinkedIn.png": "b490318359d33a61f88192542b439e4e",
"assets/assets/Logo.png": "6b4aa9130e91b1230b822859e9b3443d",
"assets/assets/MacBook.png": "246ff99ea2e75adbf225388789b46ae8",
"assets/assets/navbar.png": "48ee81d9b7049fb9d1212bfbcd23693b",
"assets/assets/ngirane.png": "496eab21922bdc5601ebe18057e3cc8f",
"assets/assets/nike.png": "cfb5e0dbf249441515979a8dfe429dd3",
"assets/assets/paymentmethod.png": "487f1fc7d647d70eef09919c2a438367",
"assets/assets/rectangle.png": "a182811aeb24024f8b3f139be21eb480",
"assets/assets/Rectangle7.png": "1083df2f221cd3ed86e538226c8a98e7",
"assets/assets/securite.png": "9812375783e7e5836d499e9efcd79ff7",
"assets/assets/tailwind.jpg": "7983ed25d7a02b867cabc30c874b932c",
"assets/assets/template.png": "bf58682c951e20bcfaf018780068625f",
"assets/assets/tontine.png": "ede29b4c87669ac55317016500bc9161",
"assets/assets/travelholiday.png": "9ca6ef9d3a060c6bf4b9f97c80c8667e",
"assets/assets/Twitter.png": "6cf86b538e268f46d194f1d890ebae3f",
"assets/bakeliTech.png": "cc9edb3284de6763ecf081b314e62478",
"assets/blog.png": "467c0d79ce7ba0a97e8ba6af7b99e9ac",
"assets/bouton.png": "d5f55ce546e619b268d7a45a73aad440",
"assets/cad.png": "8db7d555ea1545717edc4248532ab475",
"assets/clockcomputer.png": "81e3159b059616685c9575e67ec66d3f",
"assets/dashboard.png": "c823e3ebbdd5cb3ed6e3f9f80e96f891",
"assets/detailcomposant.png": "3c1bf3019d068da85306e8447cd2a4f1",
"assets/details.png": "1a280ae725a0bee781d0ccc559a3b5f1",
"assets/easymembership.png": "61c8b318f3c82768a36260c7b263a4f3",
"assets/Ellipse1.png": "2a81e98bafa4d54ebb62d28635bcab9a",
"assets/Facebook.png": "9510002e602be695fb936dc4377ec0f7",
"assets/fgfd.png": "86cf6ef517f2f266aded3fc7ed6fc8f7",
"assets/FontManifest.json": "92675b4113d8fa1d5c0cab4cac93d7e4",
"assets/fonts/MaterialIcons-Regular.otf": "ffe463238799231f65c87ff1214b930d",
"assets/fonts/Montserrat.ttf": "87a9f36eac8c031aff3af3957a14e81e",
"assets/google.png": "f0fa3b82721e8ce11056a2a34db4f526",
"assets/Group.png": "be1ddf76eba582588f0ba31bf5bb910c",
"assets/Group5.png": "14034e45d40cb3e3043d39839fbfb30b",
"assets/imageleft.png": "ed9a86f8198b00f3d093edcbed316f47",
"assets/img1.png": "e6c9f4022b34d0afcb339d1ccf02de38",
"assets/img2.png": "69c685448ccc3310865f114df0ff7760",
"assets/img3.png": "c7dae3dd2f930d5c28c32510b015ee34",
"assets/img4.png": "467c0d79ce7ba0a97e8ba6af7b99e9ac",
"assets/input.png": "8702573c007030a73861e5f393adf236",
"assets/Instagram.png": "bc872ddb1ece9c501069251a18bcebeb",
"assets/keurYeurmande.png": "c10b186695b07d6492cfe4f05eb7d6e3",
"assets/kiliappbuilder.png": "ba238e3470add60b0fbfb570bfe2069a",
"assets/LinkedIn.png": "b490318359d33a61f88192542b439e4e",
"assets/Logo.png": "6b4aa9130e91b1230b822859e9b3443d",
"assets/MacBook.png": "246ff99ea2e75adbf225388789b46ae8",
"assets/navbar.png": "48ee81d9b7049fb9d1212bfbcd23693b",
"assets/ngirane.png": "496eab21922bdc5601ebe18057e3cc8f",
"assets/nike.png": "cfb5e0dbf249441515979a8dfe429dd3",
"assets/NOTICES": "7007fadd6dd80739146a263135a40c20",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/paymentmethod.png": "487f1fc7d647d70eef09919c2a438367",
"assets/rectangle.png": "a182811aeb24024f8b3f139be21eb480",
"assets/Rectangle7.png": "1083df2f221cd3ed86e538226c8a98e7",
"assets/securite.png": "9812375783e7e5836d499e9efcd79ff7",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/tailwind.jpg": "7983ed25d7a02b867cabc30c874b932c",
"assets/template.png": "bf58682c951e20bcfaf018780068625f",
"assets/tontine.png": "ede29b4c87669ac55317016500bc9161",
"assets/travelholiday.png": "9ca6ef9d3a060c6bf4b9f97c80c8667e",
"assets/Twitter.png": "6cf86b538e268f46d194f1d890ebae3f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0f662198ee0674f149a56d8b517cf5a5",
"/": "0f662198ee0674f149a56d8b517cf5a5",
"main.dart.js": "9db18d3a725f88c80977fd113e1365c2",
"manifest.json": "0be20676d697138d28781f4c654801d7",
"version.json": "99dd3b1b81198034d39aafb04f113694"};
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
