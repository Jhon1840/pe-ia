import 'package:ganaderia/pages/animales/product_card.dart';
import 'package:ganaderia/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/w_i_d_t_g_e_t_s/nav_bar1/nav_bar1_widget.dart';
import 'package:flutter/material.dart';
import 'animales_model.dart';
import 'animal_api_services.dart';

class AnimalesWidget extends StatefulWidget {
  const AnimalesWidget({super.key});

  @override
  State<AnimalesWidget> createState() => _AnimalesWidgetState();
}

class _AnimalesWidgetState extends State<AnimalesWidget> {
  late AnimalesModel _model;
  late AnimalService _animalService; // Servicio de la API
  List<dynamic> animales = [];
  bool isLoading = true; // Control de carga
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimalesModel());
    _animalService = AnimalService(); // Inicializa el servicio
    loadAnimales(); // Carga los datos de animales

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();
    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();
  }

  Future<void> loadAnimales() async {
    final token = Provider.of<AuthProvider>(context, listen: false).token;

    if (token != null) {
      try {
        final fetchedAnimales = await _animalService.fetchAnimales(token);
        setState(() {
          animales = fetchedAnimales;
          isLoading = false;
        });
      } catch (e) {
        print('Error: $e');
        setState(() {
          isLoading = false;
        });
      }
    } else {
      print('No hay token disponible');
      setState(() {
        isLoading = false;
      });
    }
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          width: 390.0,
                          height: 72.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF97CC75),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.white,
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 120.0, 0.0),
                                  child: Text(
                                    'Animales',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 50.0)),
                            ),
                          ),
                        ),
                      ),
                      // Mostrando la lista de animales o un indicador de carga
                      isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: animales.map((animal) {
                                  return Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 289.0,
                                      child: ProductCard(
                                        title: animal['nombre'] ??
                                            'Nombre no disponible',
                                        price:
                                            animal['precio']?.toDouble() ?? 0.0,
                                        imageUrl:
                                            '../../../build/flutter_assets/assets/images/Angus.jpg',
                                        description: animal['especieRaza'] ??
                                            'Descripción no disponible',
                                        onAddToCart: () {
                                          // Acción al agregar al carrito
                                        },
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navBar1Model,
                updateCallback: () => safeSetState(() {}),
                child: const NavBar1Widget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
