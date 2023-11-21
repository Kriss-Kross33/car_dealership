part of '../pages/dashboard_screen.dart';

class _SearchCarWidget extends StatelessWidget {
  const _SearchCarWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: SizedBox(
        height: 60,
        child: TextField(
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Search',
            hintStyle: Theme.of(context).textTheme.titleMedium,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 2,
                bottom: 3,
              ),
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AssetConsts.search,
                    ),
                  ),
                ),
              ),
            ),
            suffixIconConstraints: const BoxConstraints(
              maxHeight: 25,
              maxWidth: 40,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
              ),
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AssetConsts.filter2,
                    ),
                  ),
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
