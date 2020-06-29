import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class GamesService {

  constructor(private httpClient: HttpClient, private authService: AuthService) {
  }

  getGames() {
    return this.httpClient.get("http://localhost:8000/games/fetchGames");
  }

  newOrder(body) {
    return this.httpClient.post("http://localhost:8000/orders/neworder",body);
  }

  getOrders() {
    return this.httpClient.get("http://localhost:8000/orders/myorders?userid="+this.authService.userId);
  }
}
