import '/components/bottom_nav_child2_widget.dart';
import '/components/bottom_nav_widget.dart';
import '/components/filter_chip_widget.dart';
import '/components/product_card_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'product_catalog_model.dart';
export 'product_catalog_model.dart';

class ProductCatalogWidget extends StatefulWidget {
  const ProductCatalogWidget({super.key});

  static String routeName = 'ProductCatalog';
  static String routePath = '/productCatalog';

  @override
  State<ProductCatalogWidget> createState() => _ProductCatalogWidgetState();
}

class _ProductCatalogWidgetState extends State<ProductCatalogWidget> {
  late ProductCatalogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCatalogModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 16),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Marketplace',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                      lineHeight: 1.25,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 8,
                                    buttonSize: 40,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.tune_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 8,
                                    buttonSize: 40,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.shopping_cart_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ].divide(SizedBox(width: 8)),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: '',
                              labelPresent: false,
                              helper: '',
                              helperPresent: false,
                              leadingIcon: Icon(
                                Icons.search,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                              leadingIconPresent: true,
                              trailingIconPresent: false,
                              hint: 'Search products, brands...',
                              value: '',
                              onChange: '',
                              onSubmit: '',
                              variant: 'filled',
                              error: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 16)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    child: Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.filterChipModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterChipWidget(
                                              label: 'All',
                                              selected: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.filterChipModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterChipWidget(
                                              label: 'Electronics',
                                              selected: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.filterChipModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterChipWidget(
                                              label: 'Furniture',
                                              selected: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.filterChipModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterChipWidget(
                                              label: 'Apparel',
                                              selected: true,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.filterChipModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterChipWidget(
                                              label: 'Industrial',
                                              selected: true,
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                        child: Container(
                          child: Container(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Showing 248 products',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Sort by: Newest',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                                lineHeight: 1.3,
                                              ),
                                        ),
                                        Icon(
                                          Icons.expand_more_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16,
                                        ),
                                      ].divide(SizedBox(width: 4)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(24),
                        child: Container(
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 1,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              wrapWithModel(
                                model: _model.productCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'Lumix',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/minimalist%20office%20chair',
                                  isNew: true,
                                  name: 'Series 4 Task Chair',
                                  price: '\$349.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'Nordic',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/wooden%20desk%20tray',
                                  isNew: true,
                                  name: 'Walnut Desk Organizer',
                                  price: '\$84.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'Aura',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/matte%20black%20desk%20lamp',
                                  isNew: true,
                                  name: 'LED Task Light',
                                  price: '\$120.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'TechFlow',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/minimalist%20keyboard',
                                  isNew: true,
                                  name: 'Mechanical Keyboard',
                                  price: '\$189.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'SwiftOps',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/aluminum%20laptop%20dock',
                                  isNew: true,
                                  name: 'Universal Docking Station',
                                  price: '\$210.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'Form',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/grey%20concrete%20plant%20pot',
                                  isNew: true,
                                  name: 'Concrete Planter',
                                  price: '\$45.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'Studio',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/heavy%20cotton%20tote',
                                  isNew: true,
                                  name: 'Canvas Tote Bag',
                                  price: '\$32.00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.productCardModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ProductCardWidget(
                                  brand: 'Peak',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/sleek%20waterproof%20backpack',
                                  isNew: true,
                                  name: 'Travel Backpack 20L',
                                  price: '\$155.00',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                child: wrapWithModel(
                  model: _model.bottomNavModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BottomNavWidget(
                    child: () => BottomNavChild2Widget(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
