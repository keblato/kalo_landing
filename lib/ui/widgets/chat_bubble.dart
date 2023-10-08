part of com.kalo.landing.widgets;

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.child,
    super.key,
    this.color = KaloTheme.secondaryColor,
    this.borderRadius = const BorderRadius.only(
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      topLeft: Radius.circular(16),
    ),
    this.width = 200,
    this.height = 70,
  });

  final double height;
  final double width;
  final Color color;
  final Widget child;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        child: ScalePadding(
          paddingWeb: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          paddingTablet:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          paddingMobile: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
          child: child,
        ),
      );
}
