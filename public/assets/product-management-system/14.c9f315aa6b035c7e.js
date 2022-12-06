"use strict";(self.webpackChunkproduct_management_system=self.webpackChunkproduct_management_system||[]).push([[14],{2014:(F,u,i)=>{i.r(u),i.d(u,{ProfileModule:()=>D});var m=i(6895),o=i(433),e=i(8256),p=i(529),d=i(8505),f=i(6945),h=i(184),c=i(3827);let g=(()=>{class r{constructor(t,l,n,a){this.http=t,this.configApi=l,this.loaderService=n,this.toastService=a}fetchEmp(t){return this.http.get(this.configApi.apiUrl+"profile/edit/"+(t??"")).pipe((0,d.b)(l=>{this.loaderService.loader.next(!1)},l=>{this.loaderService.loader.next(!1)},()=>{this.loaderService.loader.next(!1)}))}updateUser(t,l){return(new p.WM).append("Content-Type","multipart/form-data"),this.http.put(this.configApi.apiUrl+"profile/update/"+(l??""),t).pipe((0,d.b)(a=>{this.loaderService.loader.next(!1),this.toastService.showSuccess("success"==a.status?"Updated":"Failed Updated")},a=>{this.loaderService.loader.next(!1),this.toastService.showSuccess("Failed Updated")},()=>{this.loaderService.loader.next(!1)}))}deleteUser(t){return this.http.delete(this.configApi.apiUrl+"profile/delete/"+(t??"")).pipe((0,d.b)(l=>{this.loaderService.loader.next(!1),this.toastService.showSuccess("success"==l.status?"Updated":"Failed Updated")},l=>{this.loaderService.loader.next(!1),this.toastService.showSuccess("Failed Updated")},()=>{this.loaderService.loader.next(!1)}))}}return r.\u0275fac=function(t){return new(t||r)(e.LFG(p.eN),e.LFG(f.P),e.LFG(h.D),e.LFG(c.k))},r.\u0275prov=e.Yz7({token:r,factory:r.\u0275fac,providedIn:"root"}),r})();var v=i(5735),Z=i(8345);function U(r,s){if(1&r&&(e.TgZ(0,"h6",5),e._uU(1),e.qZA()),2&r){const t=e.oxw();e.xp6(1),e.Oqu(t.FormErrMessage.message)}}function _(r,s){1&r&&(e.TgZ(0,"h6",5),e._uU(1,"Please Fill Valid Details"),e.qZA())}function T(r,s){1&r&&(e.TgZ(0,"h6",5),e._uU(1,"Submit Failed"),e.qZA())}function S(r,s){if(1&r&&(e.TgZ(0,"option",34),e._uU(1),e.qZA()),2&r){const t=s.$implicit;e.Q6J("value",t.id),e.xp6(1),e.Oqu(t.name)}}function b(r,s){if(1&r){const t=e.EpF();e.TgZ(0,"select",31),e.NdJ("ngModelChange",function(n){e.CHM(t);const a=e.oxw();return e.KtG(a.userDetails.value.department_id=n)}),e.TgZ(1,"option",32),e._uU(2,"Please Select Department"),e.qZA(),e.YNc(3,S,2,2,"option",33),e.qZA()}if(2&r){const t=e.oxw();e.Q6J("ngModel",t.userDetails.value.department_id),e.xp6(1),e.Q6J("selected",!t.userDetails.value.department_id),e.xp6(2),e.Q6J("ngForOf",t.departments)}}function A(r,s){if(1&r){const t=e.EpF();e.TgZ(0,"select",31),e.NdJ("ngModelChange",function(n){e.CHM(t);const a=e.oxw();return e.KtG(a.userDetails.value.department_id=n)}),e.TgZ(1,"option"),e._uU(2,"Please Create Departments"),e.qZA()()}if(2&r){const t=e.oxw();e.Q6J("ngModel",t.userDetails.value.department_id)}}const C=function(){return["Panel","Profile"]};let q=(()=>{class r{constructor(t,l,n,a,y){this.form=t,this.profileService=l,this.toastService=n,this.departmentService=a,this.configApiService=y,this.departments=[],this.FormErr=!1,this.FormErrMessage=void 0,this.userDetails=this.form.group({name:["",[o.kI.required,o.kI.maxLength(225)]],email:["",[o.kI.required,o.kI.email,o.kI.max(225)]],roll:["",[o.kI.max(225)]],photo:[""],cv:[""],address:[""],password:[""],number:["",o.kI.required],department_id:["",o.kI.required],salary:["",o.kI.required]})}ngOnInit(){this.profileService.fetchEmp().subscribe(t=>{t&&(this.FormErr=!1,this.userDetails=this.form.group({name:[t.name??"",[o.kI.required,o.kI.maxLength(225)]],email:[t.email??"",[o.kI.required,o.kI.email,o.kI.max(225)]],roll:[t.roll??"",[o.kI.max(225)]],photo:[null],cv:[null],address:[t.address??""],password:[null],number:[t.number??"",o.kI.required],department_id:[t.department_id??"",o.kI.required],salary:[t.salary??"",o.kI.required]}))},t=>{this.FormErrMessage=t.error,this.FormErr=!0}),this.departmentService.fetchDepartments().subscribe(t=>{this.departments=t})}onSubmitDetails(){this.userDetails&&this.profileService.updateUser(this.userDetails.value).subscribe()}onDelete(){this.userDetails&&this.profileService.deleteUser().subscribe()}}return r.\u0275fac=function(t){return new(t||r)(e.Y36(o.qu),e.Y36(g),e.Y36(c.k),e.Y36(v.n),e.Y36(f.P))},r.\u0275cmp=e.Xpm({type:r,selectors:[["app-profile"]],decls:69,vars:10,consts:[[3,"moduleName","urlPaths"],["class","text-danger",4,"ngIf"],[1,"row","g-3",3,"formGroup","submit"],[1,"col-4"],["for","name1",1,"form-label"],[1,"text-danger"],["type","text","formControlName","name","maxlength","225","id","name1","placeholder","Full Name","required","",1,"form-control"],[1,"col-md-4"],["for","profile",1,"form-label"],["type","file","formControlName","photo","id","profile",1,"form-control"],["for","designation",1,"form-label"],["type","text","formControlName","roll","id","designation","placeholder","Designation",1,"form-control"],[1,"col-md-6"],["for","inputEmail4",1,"form-label"],["type","email","formControlName","email","maxlength","225","id","inputEmail4","required","",1,"form-control"],["for","inputPassword4",1,"form-label"],["type","password","formControlName","password","minlength","6","id","inputPassword4","required","",1,"form-control"],[1,"col-6"],["for","inputAddress",1,"form-label"],["type","text","id","inputAddress","formControlName","address","maxlength","225","placeholder","Apartment, studio, or floor","required","",1,"form-control"],["for","cv",1,"form-label"],["type","file","formControlName","cv","id","cv",1,"form-control"],["for","number",1,"form-label"],["type","tel","maxlength","10","minlength","10","formControlName","number","id","number","required","",1,"form-control"],["for","department",1,"form-label"],["id","department","class","form-select","formControlName","department_id","required","",3,"ngModel","ngModelChange",4,"ngIf"],[1,"col-md-2"],["for","salary",1,"form-label"],["type","tel","min","3","maxlength","10","formControlName","salary","id","salary","required","",1,"form-control"],[1,"col-12"],["type","submit",1,"btn","btn-primary",3,"disabled"],["id","department","formControlName","department_id","required","",1,"form-select",3,"ngModel","ngModelChange"],["value","",3,"selected"],[3,"value",4,"ngFor","ngForOf"],[3,"value"]],template:function(t,l){1&t&&(e.TgZ(0,"app-module-layout",0),e.YNc(1,U,2,1,"h6",1),e.YNc(2,_,2,0,"h6",1),e.YNc(3,T,2,0,"h6",1),e.TgZ(4,"form",2),e.NdJ("submit",function(){return l.onSubmitDetails()}),e.TgZ(5,"div",3)(6,"label",4),e._uU(7,"Name "),e.TgZ(8,"small",5),e._uU(9,"*"),e.qZA()(),e._UZ(10,"input",6),e.qZA(),e.TgZ(11,"div",7)(12,"label",8),e._uU(13,"Profile Pic "),e.TgZ(14,"small",5),e._uU(15,"*"),e.qZA()(),e._UZ(16,"input",9),e.qZA(),e.TgZ(17,"div",3)(18,"label",10),e._uU(19,"Designation "),e.TgZ(20,"small",5),e._uU(21,"*"),e.qZA()(),e._UZ(22,"input",11),e.qZA(),e.TgZ(23,"div",12)(24,"label",13),e._uU(25,"Email "),e.TgZ(26,"small",5),e._uU(27,"*"),e.qZA()(),e._UZ(28,"input",14),e.qZA(),e.TgZ(29,"div",12)(30,"label",15),e._uU(31,"Password "),e.TgZ(32,"small",5),e._uU(33,"*"),e.qZA()(),e._UZ(34,"input",16),e.qZA(),e.TgZ(35,"div",17)(36,"label",18),e._uU(37,"Address "),e.TgZ(38,"small",5),e._uU(39,"*"),e.qZA()(),e._UZ(40,"input",19),e.qZA(),e.TgZ(41,"div",17)(42,"label",20),e._uU(43,"CV "),e.TgZ(44,"small",5),e._uU(45,"*"),e.qZA()(),e._UZ(46,"input",21),e.qZA(),e.TgZ(47,"div",12)(48,"label",22),e._uU(49,"Number "),e.TgZ(50,"small",5),e._uU(51,"*"),e.qZA()(),e._UZ(52,"input",23),e.qZA(),e.TgZ(53,"div",7)(54,"label",24),e._uU(55,"Department "),e.TgZ(56,"small",5),e._uU(57,"*"),e.qZA()(),e.YNc(58,b,4,3,"select",25),e.YNc(59,A,3,1,"select",25),e.qZA(),e.TgZ(60,"div",26)(61,"label",27),e._uU(62,"Salary "),e.TgZ(63,"small",5),e._uU(64,"*"),e.qZA()(),e._UZ(65,"input",28),e.qZA(),e.TgZ(66,"div",29)(67,"button",30),e._uU(68,"Save"),e.qZA()()()()),2&t&&(e.Q6J("moduleName","Profile")("urlPaths",e.DdM(9,C)),e.xp6(1),e.Q6J("ngIf",l.FormErrMessage&&l.FormErrMessage.message),e.xp6(1),e.Q6J("ngIf",l.userDetails&&l.userDetails.invalid&&(l.userDetails.dirty||l.userDetails.touched)),e.xp6(1),e.Q6J("ngIf",l.FormErr),e.xp6(1),e.Q6J("formGroup",l.userDetails),e.xp6(54),e.Q6J("ngIf",l.departments&&l.departments.length>0),e.xp6(1),e.Q6J("ngIf",!(l.departments&&l.departments.length>0)),e.xp6(8),e.Q6J("disabled",l.userDetails.invalid&&(l.userDetails.dirty||l.userDetails.touched)))},dependencies:[Z.P,m.sg,m.O5,o._Y,o.YN,o.Kr,o.Fj,o.EJ,o.JJ,o.JL,o.Q7,o.wO,o.nD,o.sg,o.u]}),r})();var P=i(3599),x=i(4466);let D=(()=>{class r{}return r.\u0275fac=function(t){return new(t||r)},r.\u0275mod=e.oAB({type:r}),r.\u0275inj=e.cJS({imports:[x.m,P.Bz.forChild([{path:"",component:q}]),m.ez,o.UX]}),r})()}}]);