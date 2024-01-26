import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="furniture-search-filter"
export default class extends Controller {
  connect() {
  }
}

// app/assets/javascripts/furniture.js

document.addEventListener("DOMContentLoaded", function () {
  const typeLinks = document.querySelectorAll(".category-search a");

  typeLinks.forEach((link) => {
    link.addEventListener("click", (event) => {
      event.preventDefault();

      const type = link.dataset.type;
      fetch(`/furnitures/show_by_type/${type}.js`)
        .then((response) => response.text())
        .then((html) => {
          document.querySelector(".galerie").innerHTML = html;
        })
        .catch((error) => console.error("Error fetching data:", error));
    });
  });
});
  