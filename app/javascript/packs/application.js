import 'bootstrap';
import 'lightbox2';
import SweetScroll from 'sweet-scroll';
document.addEventListener('DOMContentLoaded', () => {
  const sweetScroll = new SweetScroll({ /* some options */ });
}, false);

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//require("jquery")
//require("packs/jquery.mosaic")
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
