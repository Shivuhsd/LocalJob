class JobsModel {
  List<Job>? job;

  JobsModel({this.job});

  JobsModel.fromJson(Map<String, dynamic> json) {
    if (json['job'] != null) {
      job = <Job>[];
      json['job'].forEach((v) {
        job!.add(new Job.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.job != null) {
      data['job'] = this.job!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Job {
  int? id;
  String? name;
  String? shopName;
  double? longitude;
  double? latitude;
  String? discription;
  double? salary;
  String? createdOn;
  String? type;
  String? experience;
  String? eduction;
  String? skill;
  String? jobLink;
  int? ratings;
  int? userId;

  Job(
      {this.id,
      this.name,
      this.shopName,
      this.longitude,
      this.latitude,
      this.discription,
      this.salary,
      this.createdOn,
      this.type,
      this.experience,
      this.eduction,
      this.skill,
      this.jobLink,
      this.ratings,
      this.userId});

  Job.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shopName = json['shop_name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    discription = json['discription'];
    salary = json['salary'];
    createdOn = json['created_on'];
    type = json['type'];
    experience = json['experience'];
    eduction = json['eduction'];
    skill = json['skill'];
    jobLink = json['job_link'];
    ratings = json['ratings'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['shop_name'] = this.shopName;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['discription'] = this.discription;
    data['salary'] = this.salary;
    data['created_on'] = this.createdOn;
    data['type'] = this.type;
    data['experience'] = this.experience;
    data['eduction'] = this.eduction;
    data['skill'] = this.skill;
    data['job_link'] = this.jobLink;
    data['ratings'] = this.ratings;
    data['user_id'] = this.userId;
    return data;
  }
}
