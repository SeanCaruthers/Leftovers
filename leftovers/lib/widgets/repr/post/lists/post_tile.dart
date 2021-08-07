import 'package:flutter/material.dart';
import 'package:leftovers/helpers/navigation.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_date.dart';
import 'package:leftovers/widgets/repr/post/attrs/post_leftover_count.dart';

class PostTile extends StatefulWidget {
  final post;
  final updateLeftovers;
  final ref;

  const PostTile({
    Key? key,
    required this.post,
    required this.updateLeftovers,
    required this.ref,
  }) : super(key: key);

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      widget.updateLeftovers(widget.post.leftoverCount);
    });
  }

  @override
  void dispose() {
    Future.delayed(Duration.zero, () {
      widget.updateLeftovers(-widget.post.leftoverCount);
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "view of the post, swiping will delete the post",
      enabled: true,
      child: Dismissible(
        background: Container(color: Theme.of(context).errorColor),
        onDismissed: (direction) {
          removeDocument();
        },
        key: ValueKey(widget.ref.id),
        child: simplePost(),
      ),
    );
  }

  Widget simplePost() {
    return Semantics(
      label: "Simple view of post. Shows date and leftover count",
      enabled: true,
      onTapHint: "tapping will display a detailed view of the post",
      child: ListTile(
          leading: PostDate(
            date: widget.post.date,
          ),
          trailing: PostLeftoverCount(
            leftoverCount: widget.post.leftoverCount,
          ),
          onTap: () {
            goToDetailScreen(context, widget.post);
          }),
    );
  }

  void removeDocument() async {
    await widget.ref.delete();
  }
}
