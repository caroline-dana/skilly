import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ 'addsoft', 'addhard' ]

connect(){
  console.log(this.addSoftTarget)
}
  soft() {
    this.addsoftTarget.classList.remove('d-none')
    this.addhardTarget.classList.add('d-none')
  }

  hard() {
    this.addhardTarget.classList.remove('d-none')
    this.addsoftTarget.classList.add('d-none')
  }
}
