// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

function getProducts() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function () {
		if (this.readyState == 4 && this.status == 200) {
			let container = document.getElementById("container"); //!!!!!!!!!!
			let responses = JSON.parse(this.responseText);
		
		for (var i = 0; i < responses.length; i++) {
			container.insertAdjacentHTML("afterbegin", "[" + responses[i].id + "]: " + responses[i].product + "<br />");
		}
		}
	};
	xhttp.open("GET", "http://…./….", true);
	xhttp.send();
}

getProducts();


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
