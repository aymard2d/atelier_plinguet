import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-furniture"
export default class extends Controller {
  connect() {
    console.log("hello my love")
  }
}
