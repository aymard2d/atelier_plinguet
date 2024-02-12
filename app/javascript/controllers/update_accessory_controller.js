import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-accessory"
export default class extends Controller {
  static targets = ["form", "show"]
  connect() {
    console.log("salut toi")
  }

  displayForm() {
    this.formTarget.classList.toggle("d-none");
  }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.listTarget.insertAdjacentHTML("afterbegin", data)
        this.formTarget.classList.update("d-none")
      })
      event.target.reset()
      window.scrollTo(0, 10)
  }
}