import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombres widget.
  FocusNode? nombresFocusNode;
  TextEditingController? nombresTextController;
  String? Function(BuildContext, String?)? nombresTextControllerValidator;
  // State field(s) for Apellidos widget.
  FocusNode? apellidosFocusNode;
  TextEditingController? apellidosTextController;
  String? Function(BuildContext, String?)? apellidosTextControllerValidator;
  // State field(s) for CorreoElectronico widget.
  FocusNode? correoElectronicoFocusNode;
  TextEditingController? correoElectronicoTextController;
  String? Function(BuildContext, String?)?
      correoElectronicoTextControllerValidator;
  // State field(s) for Contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;
  // State field(s) for ConfirmarC widget.
  FocusNode? confirmarCFocusNode;
  TextEditingController? confirmarCTextController;
  late bool confirmarCVisibility;
  String? Function(BuildContext, String?)? confirmarCTextControllerValidator;
  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for Ciudad widget.
  FocusNode? ciudadFocusNode;
  TextEditingController? ciudadTextController;
  String? Function(BuildContext, String?)? ciudadTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
    confirmarCVisibility = false;
  }

  @override
  void dispose() {
    nombresFocusNode?.dispose();
    nombresTextController?.dispose();

    apellidosFocusNode?.dispose();
    apellidosTextController?.dispose();

    correoElectronicoFocusNode?.dispose();
    correoElectronicoTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();

    confirmarCFocusNode?.dispose();
    confirmarCTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    ciudadFocusNode?.dispose();
    ciudadTextController?.dispose();
  }
}
