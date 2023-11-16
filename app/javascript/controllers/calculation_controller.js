import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calculation"
export default class extends Controller {
  static targets = ["duration", "price","form", "startdate","returndate"];

  connect() {
    console.log("Winnie the Pooh is Handsome")
  }
  check(event) {
    event.preventDefault();
    const start = new Date(this.startdateTarget.value)
    const end = new Date(this.returndateTarget.value)
    const difference = end.getTime() - start.getTime();
    const days = Math.ceil(difference / (1000 * 3600 * 24));

    let durationText;
    if(days === 1) {
      durationText = `${days} day`;
    } else {
      durationText = `${days} days`;
    }

    this.durationTarget.innerText = durationText;

    const sums = this.priceTarget.dataset.amount * days;
    let priceText = sums;

    if(sums > 1000) {
      priceText = sums.toLocaleString();
    }

    this.priceTarget.innerText = `¥ ${priceText}`;
  }
}
