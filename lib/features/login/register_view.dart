// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nti4flutter/core/utils/app_assets.dart';
// class CountryModel
// {
//   String name;
//   String flag;
//   String countryCode;
//   IconData icon;
//   CountryModel({required this.name, required this.flag, required this.countryCode, required this.icon});
// }
// class RegisterView extends StatelessWidget {
//   RegisterView({super.key});

//   var controller = TextEditingController();
//   var formKey = GlobalKey<FormState>();

//   List<CountryModel> countries = [
//     CountryModel(name: 'Egypt', flag: 'EG', countryCode: '+20', icon: Icons.flag),
//     CountryModel(name: 'Saudi Arabia', flag: 'sa', countryCode: '+966', icon: Icons.flag),
//     CountryModel(name: 'Kuwait', flag: 'kw', countryCode: '+965', icon: Icons.flag),
//     CountryModel(name: 'Qatar', flag: 'qa', countryCode: '+974  ', icon: Icons.flag),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: formKey,
//         child: Column(
//           children:
//           [
//             ClipRRect(
//               borderRadius: BorderRadiusDirectional.only(
//                   bottomEnd: Radius.circular(20.r),
//                   bottomStart: Radius.circular(20.r)
//               ),
//               child: SizedBox(
//                   height: 298.h,
//                   width: double.infinity,
//                   child: Image.asset(AppAssets.flag, fit: BoxFit.cover,)),
//             ),
//             SizedBox(height: 23.h,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: TextFormField(
//                 controller: controller,
//                 readOnly: true,
//                 validator: (String? value){
//                   // REGEX
//                   // ahmed223@gmail.com
//                   var emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
//                   if(!emailRegex.hasMatch(value??''))
//                   {
//                     return 'invalid email';
//                   }
//                   return null;
//                 },
//                 // enabled: false,
//                 onTap: ()async{
//                   print('tapped');
//                   print(controller.text);
//                   TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
//                   print(time.toString());
//                   controller.text = time.toString();
//                 },
//                 onChanged: (String data)
//                 {
//                   print('data changed $data');
//                 },
//                 // readOnly: true,

//                 decoration: InputDecoration(
//                   hintText: 'this is hint',

//                   labelText: 'this is label',
//                   prefixIcon: Icon(Icons.add),
//                   suffixIcon: Icon(Icons.access_alarms_sharp),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.r)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue)
//                   ),
//                   disabledBorder: UnderlineInputBorder(),
//                   focusedErrorBorder: UnderlineInputBorder(),
//                   errorBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red)
//                   ),
//                 ),

//               ),
//             ),
//             DropdownButtonFormField<CountryModel>(
//               items: countries.map<DropdownMenuItem<CountryModel>>(
//                   (CountryModel value)=> DropdownMenuItem<CountryModel>(
//                     value: value,
//                     child: Row(
//                       children: [
//                         // Text(value.flag),
//                         Text(value.name),
//                         Text(value.countryCode)
//                       ],
//                     ),
//                   )
//               ).toList(),
//               onChanged: (CountryModel? model)
//               {
//                 print('selected is ${model?.name}');
//               }
//             ),
//             DefaultSwitch(),

//             // DropdownButtonFormField<int>(
//             //     items: numbers.map<DropdownMenuItem<int>>(
//             //         (int oldItem)=> DropdownMenuItem(value: oldItem, child: Text('$oldItem'))
//             //     ).toList(),
//             //     onChanged: (int? value){
//             //     print(value);
//             //   }
//             // ),
//             ElevatedButton(onPressed: ()
//             {
//               print(formKey.currentState?.validate());
//             }, child: Text('Validate'))
//           ],
//         ),
//       ),

//     );
//   }
// }


// class DefaultSwitch extends StatefulWidget
// {
//   const DefaultSwitch({super.key});

//   @override
//   State<DefaultSwitch> createState() {
//     return DefaultSwitchState();
//   }
// }
// class DefaultSwitchState extends State<DefaultSwitch>
// {
//   bool switchValue = true;
//   bool checkBoxValue = false;


//   @override
//   Widget build(BuildContext context) {

//     return Column(
//       children: [
//         SwitchListTile(
//           activeColor: Colors.black,
//             title: Text('WIFI'),
//             subtitle: Text('enable WIFI'),
//             value: switchValue, onChanged: (bool? value){
//           if(value!=null){
//                 switchValue = value;
//                 print(switchValue);
//                 setState(() {

//                 });
//               }
//             }),

//         Checkbox(
//             activeColor: Colors.red,
//             value: checkBoxValue, onChanged: (bool? value)
//         {

//           if(value != null)
//           {
//             setState(() {
//               checkBoxValue = value;
//             });
//           }
//         })
//       ],
//     );
//   }

// }
