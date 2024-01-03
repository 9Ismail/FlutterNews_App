import '../model/categoryModel.dart';

List<CategoryModel> getCategories(){
List<CategoryModel>  category = <CategoryModel>[];

CategoryModel categoryModel=new CategoryModel();
//1
categoryModel.categoryName='Business';
categoryModel.imageUrl='https://img.freepik.com/free-photo/staff-meeting-group-young-modern-people-smart-casual-wear-discussing-something-while-working-creative-office-business-time_496169-1626.jpg?w=1380&t=st=1703932952~exp=1703933552~hmac=4a7d87ef642c9a9cf705cb511b437720007ee6e2632212c7d7e766a9824b973b';
category.add(categoryModel);

 categoryModel= new CategoryModel(); //new keyword is optional 
//2
categoryModel.categoryName='Entertainment';
categoryModel.imageUrl='https://media.istockphoto.com/id/140054736/photo/media-technologies-concept.jpg?s=1024x1024&w=is&k=20&c=A7K2Cw9t-ZLMMqhJAHsss_Vhgwhz1UBpN4p3AA603Po=';
category.add(categoryModel);

categoryModel=CategoryModel();
//3
categoryModel.categoryName='General';
categoryModel.imageUrl='https://media.istockphoto.com/id/1047673042/photo/life-insurance.webp?b=1&s=170667a&w=0&k=20&c=VrvCN0RLekR-r_Frg5NrVe148cAqe3wTy0pkl-aIalg=';
category.add(categoryModel);

 categoryModel= CategoryModel();
 //4
categoryModel.categoryName='Health';
categoryModel.imageUrl='https://media.istockphoto.com/id/1418999473/photo/doctors-comforting-disabled-elderly-patient.webp?b=1&s=170667a&w=0&k=20&c=uVL6CbSnAf-gDWyS59CrXBNDj97QM-YVIi3wRB_YiOk=';
category.add(categoryModel);

 categoryModel= CategoryModel();
 //5
categoryModel.categoryName='Science';
categoryModel.imageUrl='https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
category.add(categoryModel);

 categoryModel= CategoryModel();
//6
categoryModel.categoryName='sports';
categoryModel.imageUrl='https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3BvcnRzfGVufDB8fDB8fHww';
category.add(categoryModel);

 categoryModel= CategoryModel();
 //7
categoryModel.categoryName='Technology';
categoryModel.imageUrl='https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D';
category.add(categoryModel);


return category;


}