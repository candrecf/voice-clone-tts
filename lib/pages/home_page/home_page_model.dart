import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool gotResponse = false;

  String? audioUrl = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputText widget.
  FocusNode? inputTextFocusNode;
  TextEditingController? inputTextTextController;
  String? Function(BuildContext, String?)? inputTextTextControllerValidator;
  // State field(s) for inputVoice widget.
  String? inputVoiceValue;
  FormFieldController<String>? inputVoiceValueController;
  // Stores action output result for [Backend Call - API (GetSpeech)] action in Button widget.
  ApiCallResponse? apiResulth0e;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTextFocusNode?.dispose();
    inputTextTextController?.dispose();
  }
}
