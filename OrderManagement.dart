import '/components/bottom_nav_child4_widget.dart';
import '/components/bottom_nav_widget.dart';
import '/components/order_card_widget.dart';
import '/components/tab_group_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'order_management_list_model.dart';
export 'order_management_list_model.dart';

class OrderManagementListWidget extends StatefulWidget {
  const OrderManagementListWidget({super.key});

  static String routeName = 'OrderManagementList';
  static String routePath = '/orderManagementList';

  @override
  State<OrderManagementListWidget> createState() =>
      _OrderManagementListWidgetState();
}

class _OrderManagementListWidgetState extends State<OrderManagementListWidget> {
  late OrderManagementListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderManagementListModel());
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
                    padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
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
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order Management',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                  Text(
                                    'Real-time operations dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4)),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8,
                                buttonSize: 40,
                                fillColor:
                                    FlutterFlowTheme.of(context).surfaceVariant,
                                icon: Icon(
                                  Icons.tune_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 22,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                  leadingIconPresent: true,
                                  trailingIconPresent: false,
                                  hint: 'Search Order ID, Customer...',
                                  value: '',
                                  onChange: '',
                                  onSubmit: '',
                                  variant: 'filled',
                                  error: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.tabGroupModel,
                                updateCallback: () => safeSetState(() {}),
                                child: TabGroupWidget(
                                  label2: 'Pending',
                                  label2Present: true,
                                  label3: 'Verified',
                                  label3Present: true,
                                  label4: 'Shipping',
                                  label4Present: true,
                                  label5: '',
                                  label5Present: false,
                                  label1: 'All',
                                ),
                              ),
                            ].divide(SizedBox(height: 16)),
                          ),
                        ].divide(SizedBox(height: 24)),
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
                        padding: EdgeInsets.all(24),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Requires Action',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                ],
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  amount: '\$565.00',
                                  customer: 'Alex Rivera',
                                  idCode: '#SW-9842',
                                  status: 'Pending',
                                  time: '12 mins ago',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  amount: '\$1,240.50',
                                  customer: 'Jordan Smith',
                                  idCode: '#SW-9839',
                                  status: 'Verified',
                                  time: '45 mins ago',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  amount: '\$84.20',
                                  customer: 'Casey Chen',
                                  idCode: '#SW-9835',
                                  status: 'Pending',
                                  time: '1 hour ago',
                                ),
                              ),
                              Container(
                                height: 16,
                              ),
                              Text(
                                'Out for Delivery',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  amount: '\$312.00',
                                  customer: 'Taylor Morgan',
                                  idCode: '#SW-9830',
                                  status: 'Out for Delivery',
                                  time: '2 hours ago',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  amount: '\$45.00',
                                  customer: 'Riley Vance',
                                  idCode: '#SW-9828',
                                  status: 'Out for Delivery',
                                  time: '3 hours ago',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  amount: '\$210.15',
                                  customer: 'Morgan Lee',
                                  idCode: '#SW-9825',
                                  status: 'Out for Delivery',
                                  time: 'Yesterday',
                                ),
                              ),
                            ].divide(SizedBox(height: 16)),
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
                    child: () => BottomNavChild4Widget(),
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
