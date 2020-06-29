import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private authService: AuthService, private router: Router) { }

  ngOnInit(): void {
  }
  phone;
  username;
  password;
  confirmPassword;
  age;
  email;
  address;
  usernamelogin;
  passwordlogin;

  createAccount() {

  }

  login() {
    this.authService.login({
      username: this.usernamelogin,
      password: this.passwordlogin
    }).subscribe((res:any) => {
      this.authService.token = res.authToken;
      this.authService.userId = res.userid;
      this.authService.username = res.username;
      this.authService.updateHeader();
      this.router.navigateByUrl("");
    });
  }

  signup() {
    this.authService.signup({
      username: this.username,
      password: this.password,
      email: this.email,
      phone: this.phone,
      address: this.address,
      age: this.age
    }).subscribe((res:any) => {
      this.authService.token = res.authToken;
    });

    this.router.navigateByUrl("");
  }
}
