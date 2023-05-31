import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ['startDate', 'endDate', 'total', 'price', 'totalInput']

  connect() {
    const date = new Date
    flatpickr(this.startDateTarget, {
      mode: "single",
      minDate: Date.now(),
      dateFormat: "Y-m-d",
    });
    flatpickr(this.endDateTarget, {
      mode: "single",
      minDate: date.setDate(date.getDate()+1),
      dateFormat: "Y-m-d",
    });
  }
  totalupdate() {
    console.log(this.startDateTarget.value);
    const diff = Date.parse(this.endDateTarget.value) - Date.parse(this.startDateTarget.value)
    const days = Math.ceil(diff / (1000 * 3600 * 24))
    const price = parseInt(this.priceTarget.innerText)

    if (this.endDateTarget.value && this.startDateTarget.value) {
      this.totalTarget.innerText = `Total: ${days * price} $`
    } else {
      this.totalTarget.innerText = `Total: 0 $`
    }

    if (this.endDateTarget.value && this.startDateTarget.value) {
      this.totalInputTarget.value = days * price
    } else {
      this.totalInputTarget.value = 0
    }
  }
}
