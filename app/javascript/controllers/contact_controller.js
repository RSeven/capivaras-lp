import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact"
export default class extends Controller {
  connect() {
    this.element.addEventListener('turbo:submit-end', (event) => {
      if (event.detail.success) {
        this.element.reset()
      }

      setTimeout(() => {
        $("#result_message").setHTML('')
      }, 5000)
    })
  }
}
