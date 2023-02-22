// Flutter imports:
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  const ExpandableCard({
    Key? key,
    required this.collapsedChild,
    required this.expandedChild,
    this.isSelected = false,
    this.animationDuration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final Duration animationDuration;
  final bool isSelected;
  final Widget collapsedChild;
  final Widget expandedChild;

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  late bool isExpanded;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    isExpanded = widget.isSelected;

    if (isExpanded) _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;

              if (_animationController.isCompleted) {
                _animationController.reverse();
              } else if (_animationController.isDismissed) {
                _animationController.forward();
              }
            });
          },
          child: AnimatedContainer(
            duration: widget.animationDuration,
            curve: Curves.easeOutQuart,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color:
                    widget.isSelected ? Colors.transparent : Colors.transparent,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 200),
                  firstChild: widget.collapsedChild,
                  secondChild: widget.expandedChild,
                  crossFadeState: !isExpanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
