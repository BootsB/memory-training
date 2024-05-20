import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  connect() {

  }
  static targets = ["tab"];

  openTab(event) {
    console.log("tabs online")
    const tabName = event.target.dataset.tab;

    // Hide all tab content
    this.tabTargets.forEach(tabContent => {
      tabContent.classList.remove("active");
    });

    // Show the clicked tab content
    this.tabTargets.find(tabContent => tabContent.dataset.tab === tabName).classList.add("active");

    // Activate the clicked tab button
    event.target.classList.add("active");
  }
}
