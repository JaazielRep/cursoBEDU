import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { DataBindingComponent } from './data-binding/data-binding.component';
import { DirectivasComponent } from './directivas/directivas.component';
import { ComponentesComponent } from './componentes/componentes.component';
import { FooterCompComponent } from './footer-comp/footer-comp.component';
import { NavbarCompComponent } from './navbar-comp/navbar-comp.component';
import { BodyCompComponent } from './body-comp/body-comp.component';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    DataBindingComponent,
    DirectivasComponent,
    ComponentesComponent,
    FooterCompComponent,
    NavbarCompComponent,
    BodyCompComponent
  ],
  imports: [
    BrowserModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
