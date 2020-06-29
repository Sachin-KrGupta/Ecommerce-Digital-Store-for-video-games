import { Injectable, EventEmitter } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SharedService {

  eventEmitter = new EventEmitter<boolean>();
  cart = [];
  cartvalue = 0.00;
  selectedGame;
  updateCart() {
    this.eventEmitter.emit(true);
  }
  constructor() { }
}
