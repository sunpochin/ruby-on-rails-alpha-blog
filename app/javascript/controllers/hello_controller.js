import { Controller } from 'stimulus'; 

export default class extends Controller {
  static targets = ["heading", "haha"]
  connect() {
    console.log("hello from StimulusJS")
  }
  greet() {
    console.log("click")
    this.headingTarget.innerHTML = "HELLO World"
    this.hahaTarget.innerHTML = "HAHA "
  }
}