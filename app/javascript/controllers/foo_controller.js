import { Controller } from "@hotwired/stimulus"
import { get } from '@rails/request.js'

export default class extends Controller {
  connect() {
    this.loadMore()
  }

  loadMore()
  {
    let count = this.element.dataset.counter
    count = parseInt(count) + 2
    this.element.dataset.counter = count
    get(`/?limitCount=${count}`, { responseKind: "turbo-stream"} )
  }
}