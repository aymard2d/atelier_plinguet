import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="furniture-search-filter"
export default class extends Controller {
  static targets = ["filter", "input", "furnitures"]
  connect() {
    console.log("dev senior ma gueule !")
  }

  filter(event) {
    console.log("hello");

    const url = `${this.filterTarget.action}?query=${this.inputTarget.value}`
    if (this.inputTarget.value !== "") {
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.furnituresTarget.outerHTML = data
      })
    } else {
      this.furnituresTarget.outerHTML
    }
  }
}
