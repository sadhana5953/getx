class EmployeeModel {
  late String name, company,id;

  EmployeeModel({required this.name, required this.company, required this.id});

  factory EmployeeModel.fromJson(Map m1) {
    return EmployeeModel(
        name: m1['name'], company: m1['company'], id: m1['id']);
  }
}
