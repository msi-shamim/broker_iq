import 'package:broker_iq/registration/page_register_insurances.dart';
import 'package:flutter/material.dart';

class RegisterUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _UserInfo();
  }
}

class _UserInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserInfoState();
  }
}

final List<String> _countryList = [
  "Select Nationality",
  "Afghanistan",
  "Albania",
  "Algeria",
  "Andorra",
  "Angola",
  "Anguilla",
  "Antigua &amp; Barbuda",
  "Argentina",
  "Armenia",
  "Aruba",
  "Australia",
  "Austria",
  "Azerbaijan",
  "Bahamas",
  "Bahrain",
  "Bangladesh",
  "Barbados",
  "Belarus",
  "Belgium",
  "Belize",
  "Benin",
  "Bermuda",
  "Bhutan",
  "Bolivia",
  "Bosnia &amp; Herzegovina",
  "Botswana",
  "Brazil",
  "British Virgin Islands",
  "Brunei",
  "Bulgaria",
  "Burkina Faso",
  "Burundi",
  "Cambodia",
  "Cameroon",
  "Cape Verde",
  "Cayman Islands",
  "Chad",
  "Chile",
  "China",
  "Colombia",
  "Congo",
  "Cook Islands",
  "Costa Rica",
  "Cote D Ivoire",
  "Croatia",
  "Cruise Ship",
  "Cuba",
  "Cyprus",
  "Czech Republic",
  "Denmark",
  "Djibouti",
  "Dominica",
  "Dominican Republic",
  "Ecuador",
  "Egypt",
  "El Salvador",
  "Equatorial Guinea",
  "Estonia",
  "Ethiopia",
  "Falkland Islands",
  "Faroe Islands",
  "Fiji",
  "Finland",
  "France",
  "French Polynesia",
  "French West Indies",
  "Gabon",
  "Gambia",
  "Georgia",
  "Germany",
  "Ghana",
  "Gibraltar",
  "Greece",
  "Greenland",
  "Grenada",
  "Guam",
  "Guatemala",
  "Guernsey",
  "Guinea",
  "Guinea Bissau",
  "Guyana",
  "Haiti",
  "Honduras",
  "Hong Kong",
  "Hungary",
  "Iceland",
  "India",
  "Indonesia",
  "Iran",
  "Iraq",
  "Ireland",
  "Isle of Man",
  "Israel",
  "Italy",
  "Jamaica",
  "Japan",
  "Jersey",
  "Jordan",
  "Kazakhstan",
  "Kenya",
  "Kuwait",
  "Kyrgyz Republic",
  "Laos",
  "Latvia",
  "Lebanon",
  "Lesotho",
  "Liberia",
  "Libya",
  "Liechtenstein",
  "Lithuania",
  "Luxembourg",
  "Macau",
  "Macedonia",
  "Madagascar",
  "Malawi",
  "Malaysia",
  "Maldives",
  "Mali",
  "Malta",
  "Mauritania",
  "Mauritius",
  "Mexico",
  "Moldova",
  "Monaco",
  "Mongolia",
  "Montenegro",
  "Montserrat",
  "Morocco",
  "Mozambique",
  "Namibia",
  "Nepal",
  "Netherlands",
  "Netherlands Antilles",
  "New Caledonia",
  "New Zealand",
  "Nicaragua",
  "Niger",
  "Nigeria",
  "Norway",
  "Oman",
  "Pakistan",
  "Palestine",
  "Panama",
  "Papua New Guinea",
  "Paraguay",
  "Peru",
  "Philippines",
  "Poland",
  "Portugal",
  "Puerto Rico",
  "Qatar",
  "Reunion",
  "Romania",
  "Russia",
  "Rwanda",
  "Saint Pierre &amp; Miquelon",
  "Samoa",
  "San Marino",
  "Satellite",
  "Saudi Arabia",
  "Senegal",
  "Serbia",
  "Seychelles",
  "Sierra Leone",
  "Singapore",
  "Slovakia",
  "Slovenia",
  "South Africa",
  "South Korea",
  "Spain",
  "Sri Lanka",
  "St Kitts &amp; Nevis",
  "St Lucia",
  "St Vincent",
  "St. Lucia",
  "Sudan",
  "Suriname",
  "Swaziland",
  "Sweden",
  "Switzerland",
  "Syria",
  "Taiwan",
  "Tajikistan",
  "Tanzania",
  "Thailand",
  "Timor L'Este",
  "Togo",
  "Tonga",
  "Trinidad &amp; Tobago",
  "Tunisia",
  "Turkey",
  "Turkmenistan",
  "Turks &amp; Caicos",
  "Uganda",
  "Ukraine",
  "United Arab Emirates",
  "United Kingdom",
  "Uruguay",
  "Uzbekistan",
  "Venezuela",
  "Vietnam",
  "Virgin Islands (US)",
  "Yemen",
  "Zambia",
  "Zimbabwe"
];

final List<String> _residentials = ["Select Residential Status", "Home Owner", "Renting Privately",
"Council Tennant", "Living with Parents"];

final List<String> _employments = ['Select Employment Status','Employed', 'Self-Employed', 'Temporary Worker', 'Contract Worker',
'Unemployed', 'Retired', 'Student', 'Homemaker', 'Others'];
class _UserInfoState extends State<_UserInfo> {
  String country = "Select Nationality";
  String residentialStatus = "Select Residential Status";
  String employmentStatus = "Select Employment Status";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Primary Queries'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Wrap(
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Text(
                  "These queries will make BrokerIQ experience better",
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: DropdownButton(
                  value: country,
                  icon:  Icon(Icons.keyboard_arrow_down),
                  elevation: 16,
                  onChanged: (String? newCountry){
                    setState(() {
                      country = newCountry!;
                    });
                  },
                  isExpanded: true,
                  underline: Container(
                    height: 2.0,
                    color: Colors.green,
                  ),
                  items: _countryList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value));
                  }).toList(),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                child: DropdownButton(
                  value: residentialStatus,
                  icon:  Icon(Icons.keyboard_arrow_down),
                  elevation: 16,
                  onChanged: (String? newValue){
                    setState(() {
                      residentialStatus = newValue!;
                    });
                  },
                  isExpanded: true,
                  underline: Container(
                    height: 2.0,
                    color: Colors.green,
                  ),
                  items: _residentials.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value));
                  }).toList(),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                child: DropdownButton(
                  value: employmentStatus,
                  icon:  Icon(Icons.keyboard_arrow_down),
                  elevation: 16,
                  onChanged: (String? newValue){
                    setState(() {
                      employmentStatus = newValue!;
                    });
                  },
                  isExpanded: true,
                  underline: Container(
                    height: 2.0,
                    color: Colors.green,
                  ),
                  items: _employments.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value));
                  }).toList(),
                ),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterInsurances()));
                },
                    child: Text('Continue', style: TextStyle(color: Colors.black87),)),
              ),
            ]),
      ),
    );
  }
}
