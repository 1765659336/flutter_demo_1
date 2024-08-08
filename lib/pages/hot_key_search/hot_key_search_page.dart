import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class HotKeySearchPage extends StatefulWidget {
  final String routeSearchText;

  const HotKeySearchPage({super.key, required this.routeSearchText});

  @override
  State<HotKeySearchPage> createState() => _HotKeySearchPageState();
}

class _HotKeySearchPageState extends State<HotKeySearchPage> {
  String _searchQuery = '';
  final List<String> _searchResults = ['Result 1', 'Result 2', 'Result 3'];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchQuery = widget.routeSearchText;
    _controller.text = widget.routeSearchText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('搜索'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                  logger.d('_searchQuery:$_searchQuery');
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search...',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
