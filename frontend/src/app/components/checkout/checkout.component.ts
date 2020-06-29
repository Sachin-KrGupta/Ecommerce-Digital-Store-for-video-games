import { Component, OnInit } from '@angular/core';
import { GamesService } from '../../services/games.service';
import { SharedService } from '../../services/shared.service';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css']
})
export class CheckoutComponent implements OnInit {

  constructor(private gamesService: GamesService, private router: Router, private sharedService: SharedService, private authService: AuthService) { }


  cartItems = [];
  totalPrice = 0;
  discount = 0;
  totalPriceGames = 0;
  gameList = [];
  cc;

  ngOnInit(): void {
    this.cartItems = this.sharedService.cart;
    this.cartItems.forEach(item => {
      this.totalPriceGames += item.price;
      this.gameList.push(item.gameid);
    });

    this.totalPrice = this.totalPriceGames;
  }

  placeOrder() {
    this.gamesService.newOrder({
      userid: this.authService.userId,
      purchasedt: new Date(),
      totalPrice: this.totalPrice,
      discount: this.discount,
      gameList: this.gameList
    }).subscribe((res:any)=> {
      if(res.statusCode == "SUCCESS") {
        this.router.navigateByUrl("/myorders");
      }
    })
  }

  applyDiscount() {
    if(this.cc = "DISCOUNTCODE") {
      this.discount = 0.2*this.totalPriceGames;
      this.totalPrice = this.totalPriceGames - this.discount;
    }
  }

}
