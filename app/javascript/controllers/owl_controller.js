import { Controller } from "@hotwired/stimulus"
import 'owl.carousel'
import {$} from 'jquery'

// Connects to data-controller="owl"
export default class extends Controller {
  connect() {
    console.log('started')
    $('.owl-carousel').owlCarousel({
      loop:true,
      margin:10,
      dots:false,
      nav:true,
      mouseDrag:false,
      autoplay:true,
      animateOut: 'slideOutUp',
      responsive:{
          0:{
              items:1
          },
          600:{
              items:1
          },
          1000:{
              items:1
          }
      }
  });
  }
}
