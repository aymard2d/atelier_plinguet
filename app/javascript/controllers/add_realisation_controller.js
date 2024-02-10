import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-realisation"
export default class extends Controller {
  static targets = ["form", "list"]
  connect() {
    console.log("hello my dear")
  }

  displayForm() {
    this.formTarget.classList.toggle("d-none");
  }

  add(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain"},
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.listTarget.insertAdjacentHTML("afterbegin", data)
        this.formTarget.classList.add("d-none")
      })
      event.target.reset()
      window.scroll(0, 10)
  }
}
