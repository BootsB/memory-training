import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  static targets = ["inner"];

  connect() {
    console.log("Card controller online");
  }

  flip(event) {
    const cardInner = event.currentTarget.querySelector(".card-inner");
    cardInner.classList.toggle("is-flipped");
  }
}
