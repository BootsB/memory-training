import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="deck"
export default class extends Controller {
  static targets = ["deck", "button"]

  connect() {
    console.log("Deck controller connected")
  }

  async fetchDeck() {
    const response = await fetch('/random_deck')
    const deck = await response.json()
    console.log(deck)
    this.displayDeck(deck)
  }

  displayDeck(deck) {
    this.deckTarget.innerHTML = ''
    deck.forEach(card => {
      const cardElement = document.createElement('div')
      cardElement.classList.add('short-card', 'border', 'bg-white')
      cardElement.innerHTML = `
        <p class="display-6 text-center">${card.value}<span class="ms-1 ${card.suit == 'diamonds' || card.suit == 'hearts' ? 'text-danger' : ''}">${card.icon}</span></p>
      `
      this.deckTarget.appendChild(cardElement)

    })
    this.buttonTarget.innerHTML = "Test your skills"
    
  }
}
