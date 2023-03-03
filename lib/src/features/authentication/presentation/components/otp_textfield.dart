import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_fonts.dart';
import '../../../../core/app_colors.dart';

class OtpTextField extends StatefulWidget {
  const OtpTextField({Key? key}) : super(key: key);

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  final List<TextEditingController> _list =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusList = List.generate(4, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusList.map((e) {
          if (!e.hasFocus) {
            _focusList[0].requestFocus();
          }
        });
      },
      child: Container(
        height: 88.h(context),
        margin: EdgeInsets.only(
            left: 28.w(context), right: 28.w(context), bottom: 24.h(context)),
        decoration: const BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          margin: EdgeInsets.only(
              left: 80.w(context),
              right: 86.w(context),
              top: 24.h(context),
              bottom: 24.h(context)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  4,
                  (index) => StatefulBuilder(builder: (context, set) {
                        return _OtpField(
                            index: index,
                            controllerList: _list,
                            nodeList: _focusList,
                            onTap: _onTap,
                            onChange: _onChange);
                      }))),
        ),
      ),
    );
  }

  void _onTap(index) {
    _list[index].selection = TextSelection.fromPosition(
        TextPosition(offset: _list[index].text.length));
  }

  void _onChange(val) {
    {
      if (val.isNotEmpty) {
        FocusScope.of(context).nextFocus();
      }
    }
  }
}

class _OtpField extends StatefulWidget {
  const _OtpField(
      {Key? key,
      required this.index,
      required this.controllerList,
      required this.nodeList,
      required this.onTap,
      required this.onChange})
      : super(key: key);

  final int index;
  final List<TextEditingController> controllerList;
  final List<FocusNode> nodeList;
  final Function(int index) onTap;
  final Function(String val) onChange;

  @override
  State<_OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<_OtpField> {
  @override
  void initState() {
    super.initState();
    widget.nodeList[0].requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, set) {
      return SizedBox(
        height: 40.h(context),
        width: 18.w(context),
        child: Stack(
          alignment: Alignment.center,
          children: [
            TextField(
              maxLength: 1,
              focusNode: widget.nodeList[widget.index],
              controller: widget.controllerList[widget.index],
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              onTap: () => widget.onTap(widget.index),
              onChanged: (val) {
                set(() {});
                widget.onChange(val);
              },
              style: TextStyle(
                  fontFamily: AppFontFamily.centuryRegularW400,
                  fontSize: 32.sp(context)),
                  decoration: const InputDecoration(
                  counterText: '',
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            if (widget.controllerList[widget.index].text.isEmpty)
              Container(
                height: 12.h(context),
                width: 12.w(context),
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              )
          ],
        ),
      );
    });
  }
}
