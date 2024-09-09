import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:little_guardian/ui/style/colors_util.dart';
import 'package:little_guardian/ui/views/components/next_page_button.dart';
import 'package:little_guardian/ui/views/parent/setting/parent_setting3_view.dart';

class ParentSetting2View extends StatefulWidget {
  @override
  _ParentSetting2View createState() => _ParentSetting2View();
}

class _ParentSetting2View extends State<ParentSetting2View> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor, // 배경색 설정
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Little Name',
              style: TextStyle(fontSize: 16),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Little Name',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Age',
              style: TextStyle(fontSize: 16),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Age',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            const Text(
              'Picture',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Spacer(),
            NextPageButton(targetPage: ParentSetting3View()),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
