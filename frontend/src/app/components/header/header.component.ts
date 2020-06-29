import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { SharedService } from '../../services/shared.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor(private router: Router, private authService: AuthService, private sharedService: SharedService) { }

  loggedIn;
  ngOnInit(): void {
    if(this.authService.token) {
      this.loggedIn = this.authService.username;
      this.cartItems = this.sharedService.cart.length;
      this.cartValue = this.sharedService.cartvalue;
    }

    this.authService.eventemitter.subscribe(()=> {
      this.loggedIn = this.authService.username;
      
    })

    this.sharedService.eventEmitter.subscribe(() => {
      this.cartItems = this.sharedService.cart.length;
      this.cartValue = this.sharedService.cartvalue;
    });
  }

  cartValue = 0.00;
  cartItems = 0;

  doSomething(){

  }  
  navigateToRegister() {
    this.router.navigateByUrl("/login");
  }

  emptyCart() {
    this.sharedService.cart = [];
    this.sharedService.cartvalue = 0;
    this.sharedService.updateCart();
  }

  navigateToCatalog(category) {

    if(category == "about") {
      this.router.navigateByUrl('/about');
      return;

    }
    this.router.navigateByUrl('/games-catalog')
  }

  navigateToCheckout() {
    this.router.navigateByUrl("/checkout");
  }
}
