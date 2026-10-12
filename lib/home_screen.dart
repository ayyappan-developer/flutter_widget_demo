import 'package:flutter/material.dart';

// 1. Basics
import 'widgets/text_widget.dart';
import 'widgets/icon_widget.dart';
import 'widgets/image_widget.dart';
import 'widgets/container_widget.dart';
import 'widgets/button_widget.dart';
import 'widgets/stateless_widget_demo.dart';
import 'widgets/stateful_widget_demo.dart';

// 2. Layout
import 'widgets/scaffold_widget.dart';
import 'widgets/column_widget.dart';
import 'widgets/row_widget.dart';
import 'widgets/center_widget.dart';
import 'widgets/padding_widget.dart';
import 'widgets/sizedbox_widget.dart';
import 'widgets/expanded_widget.dart';
import 'widgets/stack_widget.dart';
import 'widgets/wrap_widget.dart';
import 'widgets/card_widget.dart';
import 'widgets/listtile_widget.dart';
import 'widgets/circle_avatar_widget.dart';

// 3. Scrolling
import 'widgets/single_child_scroll_view_widget.dart';
import 'widgets/listview_widget.dart';
import 'widgets/listview_builder_widget.dart';
import 'widgets/gridview_widget.dart';

// 4. Input
import 'widgets/textfield_widget.dart';
import 'widgets/form_widget.dart';
import 'widgets/checkbox_widget.dart';
import 'widgets/switch_widget.dart';
import 'widgets/radio_widget.dart';
import 'widgets/slider_widget.dart';
import 'widgets/dropdown_widget.dart';
import 'widgets/gesture_detector_widget.dart';

// 5. Dialogs & Messages
import 'widgets/alert_dialog_widget.dart';
import 'widgets/snackbar_widget.dart';
import 'widgets/bottom_sheet_widget.dart';
import 'widgets/progress_indicator_widget.dart';

// 6. Navigation
import 'widgets/navigator_widget.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'widgets/tabbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          sectionTitle('1. Basics'),
          menuItem(context, 'Text', 'Show words on the screen', const TextWidget()),
          menuItem(context, 'Icon', 'Material icons', const IconWidget()),
          menuItem(context, 'Image', 'Network and asset images', const ImageWidget()),
          menuItem(context, 'Container', 'Box with color, size, border', const ContainerWidget()),
          menuItem(context, 'Buttons', 'Elevated, Text, Outlined, Icon, FAB', const ButtonWidget()),
          menuItem(context, 'StatelessWidget', 'UI that never changes', const StatelessWidgetDemo()),
          menuItem(context, 'StatefulWidget', 'UI that changes with setState()', const StatefulWidgetDemo()),

          sectionTitle('2. Layout'),
          menuItem(context, 'Scaffold & AppBar', 'Basic page structure', const ScaffoldWidget()),
          menuItem(context, 'Column', 'Children top to bottom', const ColumnWidget()),
          menuItem(context, 'Row', 'Children left to right', const RowWidget()),
          menuItem(context, 'Center & Align', 'Place a child in a position', const CenterWidget()),
          menuItem(context, 'Padding', 'Space around a widget', const PaddingWidget()),
          menuItem(context, 'SizedBox', 'Fixed size or empty gap', const SizedBoxWidget()),
          menuItem(context, 'Expanded & Flexible', 'Share the free space', const ExpandedWidget()),
          menuItem(context, 'Stack & Positioned', 'Widgets on top of each other', const StackWidget()),
          menuItem(context, 'Wrap', 'Moves to next line when full', const WrapWidget()),
          menuItem(context, 'Card', 'Box with shadow and round corners', const CardWidget()),
          menuItem(context, 'ListTile', 'Ready-made list row', const ListTileWidget()),
          menuItem(context, 'CircleAvatar', 'Round profile picture', const CircleAvatarWidget()),

          sectionTitle('3. Scrolling'),
          menuItem(context, 'SingleChildScrollView', 'Make one child scrollable', const SingleChildScrollViewWidget()),
          menuItem(context, 'ListView', 'Scrollable list (fixed children)', const ListViewWidget()),
          menuItem(context, 'ListView.builder', 'Build rows on demand', const ListViewBuilderWidget()),
          menuItem(context, 'GridView', 'Items in rows and columns', const GridViewWidget()),

          sectionTitle('4. Input'),
          menuItem(context, 'TextField', 'Type some text', const TextFieldWidget()),
          menuItem(context, 'Form & TextFormField', 'Input with validation', const FormWidget()),
          menuItem(context, 'Checkbox', 'Tick on / off', const CheckboxWidget()),
          menuItem(context, 'Switch', 'Toggle on / off', const SwitchWidget()),
          menuItem(context, 'Radio', 'Choose one from many', const RadioWidget()),
          menuItem(context, 'Slider', 'Pick a value by sliding', const SliderWidget()),
          menuItem(context, 'DropdownButton', 'Pick from a drop-down list', const DropdownWidget()),
          menuItem(context, 'GestureDetector & InkWell', 'Detect taps on any widget', const GestureDetectorWidget()),

          sectionTitle('5. Dialogs & Messages'),
          menuItem(context, 'AlertDialog', 'Popup with Yes / No', const AlertDialogWidget()),
          menuItem(context, 'SnackBar', 'Short message at the bottom', const SnackBarWidget()),
          menuItem(context, 'Bottom Sheet', 'showModalBottomSheet', const BottomSheetWidget()),
          menuItem(context, 'Progress Indicator', 'Loading spinners and bars', const ProgressIndicatorWidget()),

          sectionTitle('6. Navigation'),
          menuItem(context, 'Navigator push & pop', 'Go to a page and come back', const NavigatorWidget()),
          menuItem(context, 'Drawer', 'Side menu', const DrawerWidget()),
          menuItem(context, 'BottomNavigationBar', 'Tabs at the bottom', const BottomNavigationBarWidget()),
          menuItem(context, 'TabBar', 'Tabs at the top', const TabBarWidget()),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Grey heading for each group
  Widget sectionTitle(String title) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  // One row in the list. Tap it to open the widget page.
  Widget menuItem(BuildContext context, String title, String subtitle, Widget page) {
    return ListTile(
      leading: const Icon(Icons.widgets, color: Colors.indigo),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
