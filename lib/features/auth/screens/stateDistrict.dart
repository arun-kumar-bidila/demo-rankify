import 'package:flutter/material.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/auth/screens/examcategory.dart';
import 'package:rankify/utils/screen_size.dart';
import 'package:rankify/utils/userdata.dart';

class StateDistrict extends StatefulWidget {
  const StateDistrict({super.key});

  @override
  State<StateDistrict> createState() => _StateDistrictState();
}

class _StateDistrictState extends State<StateDistrict> {

  String selectedState = "";
  String selectedDistrict = "";
  Map<String, List<String>> districtsByState = {
  "Andhra Pradesh": ["Visakhapatnam", "Guntur", "Kurnool"],
  "Arunachal Pradesh": ["Itanagar", "Tawang", "Pasighat"],
  "Assam": ["Guwahati", "Dibrugarh", "Silchar"],
  "Bihar": ["Patna", "Gaya", "Muzaffarpur"],
  "Chhattisgarh": ["Raipur", "Bilaspur", "Durg"],
  "Goa": ["North Goa", "South Goa"],
  "Gujarat": ["Ahmedabad", "Surat", "Vadodara"],
  "Haryana": ["Gurugram", "Faridabad", "Panipat"],
  "Himachal Pradesh": ["Shimla", "Mandi", "Kangra"],
  "Jharkhand": ["Ranchi", "Jamshedpur", "Dhanbad"],
  "Karnataka": ["Bengaluru", "Mysuru", "Mangaluru"],
  "Kerala": ["Thiruvananthapuram", "Kochi", "Kozhikode"],
  "Madhya Pradesh": ["Bhopal", "Indore", "Gwalior"],
  "Maharashtra": ["Mumbai", "Pune", "Nagpur"],
  "Manipur": ["Imphal West", "Imphal East"],
  "Meghalaya": ["East Khasi Hills", "West Garo Hills"],
  "Mizoram": ["Aizawl", "Lunglei"],
  "Nagaland": ["Kohima", "Dimapur"],
  "Odisha": ["Bhubaneswar", "Cuttack", "Puri"],
  "Punjab": ["Ludhiana", "Amritsar", "Jalandhar"],
  "Rajasthan": ["Jaipur", "Jodhpur", "Udaipur"],
  "Sikkim": ["Gangtok", "Namchi"],
  "Tamil Nadu": ["Chennai", "Coimbatore", "Madurai"],
  "Telangana": ["Hyderabad", "Warangal", "Nizamabad"],
  "Tripura": ["Agartala", "Udaipur"],
  "Uttar Pradesh": ["Lucknow", "Varanasi", "Kanpur"],
  "Uttarakhand": ["Dehradun", "Haridwar", "Nainital"],
  "West Bengal": ["Kolkata", "Asansol", "Darjeeling"],
};

  List<String> states = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"
  ];


  void _buildDistrictInfoDialog(String state) {
     String tempSelectedDistrict = selectedDistrict;
     List districts = districtsByState[state]!;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context,
              void Function(void Function()) setModelState) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select District",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_rounded,
                            size: 25,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: Screensize.height * 0.2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (int i = 0; i < districts.length; i++)
                                GestureDetector(
                                  onTap: () {
                                    setModelState(() {
                                      tempSelectedDistrict = districts[i];
                                      Navigator.of(context).pop(context);
                                    });
                                    setState(() {
                                      selectedDistrict = districts[i];
                                      UserData().district = selectedDistrict;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: Screensize.height * 0.01),
                                    padding: EdgeInsets.symmetric(
                                        vertical: Screensize.height * .01,
                                        horizontal: Screensize.width * 0.05),
                                    decoration: BoxDecoration(
                                      border: districts[i] == tempSelectedDistrict
                                          ? Border.all(
                                              color: GlobalColors.buttonColor,
                                              width: 1)
                                          : null,
                                      color: GlobalColors.greyF5,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          districts[i],
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                districts[i] == tempSelectedDistrict
                                                    ? GlobalColors.buttonColor
                                                    : GlobalColors.grey5D,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  void _buildStateInfoDialog() {
    String tempSelectedState = selectedState;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context,
              void Function(void Function()) setModelState) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select State",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_rounded,
                            size: 25,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: Screensize.height * 0.2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (int i = 0; i < states.length; i++)
                                GestureDetector(
                                  onTap: () {
                                    setModelState(() {
                                      tempSelectedState = states[i];
                                      Navigator.of(context).pop(context);
                                    });
                                    setState(() {
                                      selectedState = states[i];
                                      UserData().state = selectedState;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: Screensize.height * 0.01),
                                    padding: EdgeInsets.symmetric(
                                        vertical: Screensize.height * .01,
                                        horizontal: Screensize.width * 0.05),
                                    decoration: BoxDecoration(
                                      border: states[i] == tempSelectedState
                                          ? Border.all(
                                              color: GlobalColors.buttonColor,
                                              width: 1)
                                          : null,
                                      color: GlobalColors.greyF5,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          states[i],
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                states[i] == tempSelectedState
                                                    ? GlobalColors.buttonColor
                                                    : GlobalColors.grey5D,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/R1.png",
                height: 400,
                width: 300,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(24),
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 10,
                      children: [
                        
                        GestureDetector(
                          onTap: () {
                            _buildStateInfoDialog();
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedState.isEmpty
                                      ? "Select Your State"
                                      : selectedState,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                ),
                              ],
                            ),
                          ),
                        ),


                        GestureDetector(
                          onTap: () {
                            print(selectedState);
                            if(!selectedState.isEmpty){
                                _buildDistrictInfoDialog(selectedState);
                            }
                            // _buildStateInfoDialog();
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedDistrict.isEmpty
                                      ? "Select your distict"
                                      : selectedDistrict,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                ),
                              ],
                            ),
                          ),
                        ),
                      
                        CustomButton(
                          text: "Continue",
                          onTap: () {
                            if (selectedDistrict.isNotEmpty && selectedDistrict.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Examcategory(),
                                ),
                              );
                            }
                          },
                          color: GlobalColors.buttonColor,
                          textColor: GlobalColors.textWhite,
                        ),
                      
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}