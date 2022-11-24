import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesList = List.generate(10, (index) => index);

  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  _addMoreImages() {
    final lastId = imagesList.last;
    imagesList.addAll(List.generate(10, (index) => lastId + index + 1));
    setState(() {});
  }

  Future _fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    const duration = Duration(seconds: 2);
    Future.delayed(duration, () {
      _addMoreImages();
      isLoading = false;
      setState(() {});

      if (_scrollController.position.pixels + 100 <=
          _scrollController.position.maxScrollExtent) {
        return;
      }

      _scrollController.animateTo(_scrollController.position.pixels + 250,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn);
    });
  }

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));

    final lastId = imagesList.last;
    imagesList.clear();
    imagesList.addAll(List.generate(10, (index) => lastId + index + 1));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: imagesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesList[index]}'),
                  );
                },
              ),
            ),
            if (isLoading)
              Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 20,
                  child: const _LoadingIcon()),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: const CircularProgressIndicator(),
    );
  }
}
