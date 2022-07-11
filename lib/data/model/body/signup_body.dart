class SignUpBody {
  String fName;
  String lName;
  String phone;
  String email;
  String password;
  String birthDate;
  int gender;

  SignUpBody(
      {this.fName,
      this.lName,
      this.phone,
      this.email = '',
      this.password,
      this.gender,
      this.birthDate});

  SignUpBody.fromJson(Map<String, dynamic> json) {
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    birthDate = json['date_of_birth'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['date_of_birth'] = this.birthDate;
    data['gender'] = this.gender;
    return data;
  }
}
