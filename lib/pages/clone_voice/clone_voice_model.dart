import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'clone_voice_widget.dart' show CloneVoiceWidget;
import 'package:flutter/material.dart';

class CloneVoiceModel extends FlutterFlowModel<CloneVoiceWidget> {
  ///  Local state fields for this page.

  String? voiceId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputName widget.
  FocusNode? inputNameFocusNode;
  TextEditingController? inputNameTextController;
  String? Function(BuildContext, String?)? inputNameTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (CloneVoice)] action in Button widget.
  ApiCallResponse? apiResulth0e;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputNameFocusNode?.dispose();
    inputNameTextController?.dispose();
  }
}
