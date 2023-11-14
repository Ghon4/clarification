import 'package:demop/utils/resources/color_manger.dart';
import 'package:flutter/material.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {super.key,
      Widget? title,
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      bool initialValue = false,
      bool autoValidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: ColorManager.primarySwiss,
                checkColor: ColorManager.white,
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                subtitle: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => Text(
                          state.errorText ?? "",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}
