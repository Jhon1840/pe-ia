import 'package:ganaderia/pages/home_page/home_page_model.dart';
import 'package:ganaderia/pages/home_page/home_page_widget.dart';
import 'package:ganaderia/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'login_model.dart';
export 'login_model.dart';
import 'package:http/http.dart' as http;

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 600.0,
            ),
            decoration: const BoxDecoration(),
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logosinfondo1.png',
                      width: 245.0,
                      height: 253.0,
                      fit: BoxFit.contain,
                    ),
                    Material(
                      color: Colors.transparent,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Iniciar Sesión',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              TextFormField(
                                controller: _model.textController1,
                                focusNode: _model.textFieldFocusNode1,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Correo Electrónico',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E3E7),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                minLines: 1,
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                              TextFormField(
                                controller: _model.textController2,
                                focusNode: _model.textFieldFocusNode2,
                                autofocus: false,
                                obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E3E7),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  suffixIcon: InkWell(
                                    onTap: () => safeSetState(
                                      () => _model.passwordVisibility =
                                          !_model.passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                minLines: 1,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  final email = _model.textController1!.text;
                                  final password = _model.textController2!.text;

                                  try {
                                    print(
                                        'Enviando solicitud de inicio de sesión...'); // Depuración: Indicar que se ha enviado la solicitud
                                    final response = await http.post(
                                      Uri.parse(
                                          'http://localhost:5290/api/Acceso/Login'),
                                      headers: <String, String>{
                                        'Content-Type':
                                            'application/json; charset=UTF-8',
                                      },
                                      body: jsonEncode(<String, String>{
                                        'email': email,
                                        'contrasena': password,
                                      }),
                                    );

                                    print(
                                        'Respuesta de la API recibida: ${response.statusCode}'); // Depuración: Mostrar código de estado
                                    if (response.statusCode == 200) {
                                      final data = jsonDecode(response.body);
                                      print(
                                          'Datos recibidos: $data'); // Depuración: Mostrar los datos recibidos

                                      if (data.containsKey('token')) {
                                        String token = data['token'];
                                        print(
                                            'Token recibido: $token'); // Depuración: Verificar si el token está en los datos

                                        Provider.of<AuthProvider>(context,
                                                listen: false)
                                            .setToken(token);
                                        print(
                                            'Token después de setear en AuthProvider: ${Provider.of<AuthProvider>(context, listen: false).token}');

                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                HomePageWidget(),
                                          ),
                                        );
                                      } else {
                                        print(
                                            'Error: No se encontró el token en la respuesta de la API'); // Depuración: Si no hay token
                                      }
                                    } else {
                                      print(
                                          'Error de autenticación: ${response.body}'); // Depuración: Mostrar mensaje de error si la autenticación falla
                                    }
                                  } catch (e) {
                                    print(
                                        'Error en el proceso de login: $e'); // Depuración: Manejo de excepción
                                  }
                                },
                                text: 'Iniciar Sesión',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 50.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF97CC75),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ].divide(const SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '¿No tienes una cuenta?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('CreateAccount');
                          },
                          text: 'Regístrate',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0x004B39EF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: const Color(0xFF10CEB7),
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ].divide(const SizedBox(height: 32.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
