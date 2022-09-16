import 'package:flutter/material.dart';
import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';
import 'package:azlistview/azlistview.dart';

import 'azitem.dart';

class AlphabetScrollPage extends StatefulWidget {

  final List<String> items;
  final ValueChanged<String> onClickedItem;

  const AlphabetScrollPage({
    Key? key,
    required this.items,
    required this.onClickedItem
  }) : super(key: key);

  @override
  _AlphabetScrollPageState createState() => _AlphabetScrollPageState();
}

class _AlphabetScrollPageState extends State<AlphabetScrollPage> {
  List<AZItem> items = [];

  @override
  void initState() {
    super.initState();

    initList(widget.items);
  }

  void initList(List<String> items){
    this.items = items
      .map((item) => AZItem(title: item, tag: item[0].toUpperCase()))
      .toList();

    SuspensionUtil.sortListBySuspensionTag(this.items);
    SuspensionUtil.setShowSuspensionStatus(this.items);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) => AzListView(
      padding: EdgeInsets.all(16),
      data: items,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return _buildListItem(item);
      },
    indexHintBuilder: (context, hint) => Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle
      ),
      child: Text(
        hint,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30
        ),
      ),
    ),
    indexBarMargin: EdgeInsets.all(10),
    indexBarOptions: IndexBarOptions(
        needRebuild: true,
        selectTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        selectItemDecoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red
        ),
        indexHintAlignment: Alignment.centerRight,
        indexHintOffset: Offset(-20, 0)
    ),
  );
  Widget _buildListItem(AZItem item) {
    final tag = item.getSuspensionTag();
    final offstage = !item.isShowSuspension;

    return Column(
      children: [
        Offstage(
          offstage: offstage,
          child: buildHeader(tag),
        ),
        Container(
          margin: EdgeInsets.only(right: 16),
          child: ListTile(
            title: Text(item.title),
            onTap: () => widget.onClickedItem(item.title),
          ),
        ),
      ],
    );
  }

  buildHeader(String tag) => Container(
    height: 40,
    margin: EdgeInsets.only(right: 16),
    padding: EdgeInsets.only(left: 16),
    color: Colors.red.shade300,
    alignment: Alignment.centerLeft,
    child: Text(
      '$tag',
      softWrap: false,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
  );
}
