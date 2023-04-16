
import 'package:flutter/material.dart';
import 'package:mathra_reminder/widgets/steper_widget.dart';

class AddNewMedicineScreen extends StatefulWidget {
  const AddNewMedicineScreen({super.key});
  @override
  State<AddNewMedicineScreen> createState() => _AddNewMedicineScreenState();
}

class _AddNewMedicineScreenState extends State<AddNewMedicineScreen> {
   int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_outlined,color: Colors.black,)),
        title: const Text("Add New Medication",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
      ),

      body:const CustomStepper(),
      
      //  Container(
      //     child: Column(
      //       children: [
      //         Expanded(
      //           child: Stepper(
      //              type: StepperType.horizontal,
      //             physics: ScrollPhysics(),
      //             currentStep: _currentStep,
      //             onStepTapped: (step) => tapped(step),
      //             onStepContinue:  continued,
      //             onStepCancel: cancel,
      //             steps: <Step>[
      //                Step(
      //                 label: Text("flkdsfk"),
      //                 title: Container(height: 1,color: Colors.green,),
      //                 content: Column(
      //                   children: <Widget>[
      //                     TextFormField(
      //                       decoration: InputDecoration(labelText: 'Email Address'),
      //                     ),
      //                     TextFormField(
      //                       decoration: InputDecoration(labelText: 'Password'),
      //                     ),
      //                   ],
      //                 ),
      //                 isActive: _currentStep >= 0,
      //                 state: _currentStep >= 0 ?
      //                 StepState.complete : StepState.disabled,
      //               ),
      //                Step(
      //                 title: new Text('Address'),
      //                 content: Column(
      //                   children: <Widget>[
      //                     TextFormField(
      //                       decoration: InputDecoration(labelText: 'Home Address'),
      //                     ),
      //                     TextFormField(
      //                       decoration: InputDecoration(labelText: 'Postcode'),
      //                     ),
      //                   ],
      //                 ),
      //                 isActive: _currentStep >= 0,
      //                 state: _currentStep >= 1 ?
      //                 StepState.complete : StepState.disabled,
      //               ),
      //                Step(
      //                 title: new Text('Mobile Number'),
      //                 content: Column(
      //                   children: <Widget>[
      //                     TextFormField(
      //                       decoration: InputDecoration(labelText: 'Mobile Number'),
      //                     ),
      //                   ],
      //                 ),
      //                 isActive:_currentStep >= 0,
      //                 state: _currentStep >= 2 ?
      //                 StepState.complete : StepState.disabled,
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
    );
  }


   tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
        setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
        setState(() => _currentStep -= 1) : null;
  }
}