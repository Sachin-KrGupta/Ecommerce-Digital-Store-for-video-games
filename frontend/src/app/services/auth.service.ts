import { Injectable, EventEmitter } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})  
export class AuthService {

  token;
  userId;

  constructor(private httpClient: HttpClient) { }

  login(body) {
    return this.httpClient.post("http://localhost:8000/auth/login", body);
  }

  username;

  signup(body) {
    return this.httpClient.post("http://localhost:8000/auth/signup", body)
  }

  eventemitter = new EventEmitter<boolean>();

  updateHeader() {
    this.eventemitter.emit(true);
  }
}
