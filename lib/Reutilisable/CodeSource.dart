// ignore: file_names
import 'package:flutter/material.dart';

class CodeSource extends StatelessWidget {
  const CodeSource({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Image.asset(
                'assets/about.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My About Details',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered in som, by injected humour',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: DefaultTabController(
                      length: 4,
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: 'Main Skill'),
                              Tab(text: 'Awards'),
                              Tab(text: 'Experience'),
                              Tab(text: 'Education'),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Container(
                            height: 300.0,
                            child: TabBarView(
                              children: [
                                // Main Skill
                                ListView(
                                  children: [
                                    buildSkillItem('Designing', 95),
                                    buildSkillItem('Management', 85),
                                    buildSkillItem('Marketing', 75),
                                    buildSkillItem('Development', 70),
                                  ],
                                ),
                                // Awards
                                ListView(
                                  children: [
                                    buildAwardsItem('Awards.com', 'Winner', '2019 - 2020'),
                                    buildAwardsItem('CSS Design Awards', 'Winner', '2017 - 2018'),
                                    buildAwardsItem('ADesign nominees', 'Site of the day', '2013 - 2014'),
                                  ],
                                ),
                                // Experience
                                ListView(
                                  children: [
                                    buildExperienceItem('Sr. Front-end Engineer - Google', '2018 - Current'),
                                    buildExperienceItem('Sr. Front-end Engineer - Microsoft', '2017 - 2018'),
                                    buildExperienceItem('Software Engineer - Alibaba', '2013 - 2014'),
                                  ],
                                ),
                                // Education
                                ListView(
                                  children: [
                                    buildEducationItem('BSc In CSE - ABC University, Los Angeles', '2010'),
                                    buildEducationItem('Diploma in Computer Science - Gamma Technical Institute', '2009'),
                                    buildEducationItem('Graphic Designer - ABC University, Los Angeles', '2007'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSkillItem(String title, int percentage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          LinearProgressIndicator(
            value: percentage / 100,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          SizedBox(height: 8.0),
          Text('$percentage%'),
        ],
      ),
    );
  }

  Widget buildAwardsItem(String title, String subtitle, String date) {
    return ListTile(
      title: Text(
        '$title - $subtitle',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(date),
    );
  }

  Widget buildExperienceItem(String title, String date) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(date),
    );
  }

  Widget buildEducationItem(String title, String date) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(date),
    );
  }
}
