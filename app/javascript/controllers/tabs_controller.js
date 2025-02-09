import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["offer"]

  highlight(event) {
    // Remove the 'bg-black' and 'text-white' classes from all offers
    this.offerTargets.forEach(offer => {
      offer.classList.remove("bg-black", "text-white")
    })

    // Add 'bg-black' and 'text-white' to the clicked offer
    event.target.classList.add("bg-black", "text-white")
  }
}
