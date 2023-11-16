import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectionWidget extends StatefulWidget {
  const ConnectionWidget({
    super.key,
    this.onConnected,
    this.onDisConnected,
    this.onConnectionStateChange,
  });

  final Widget? onConnected;
  final Widget? onDisConnected;
  final Function(bool isConnected)? onConnectionStateChange;

  @override
  State<ConnectionWidget> createState() => _ConnectionWidgetState();
}

class _ConnectionWidgetState extends State<ConnectionWidget> {
  bool isDeviceConnected = false;

  _updateConnection() async {
    final result = await Connectivity().checkConnectivity();
    final isConnected = (result != ConnectivityResult.none);

    if (mounted) {
      setState(() {
        isDeviceConnected = isConnected;
      });
      if(widget.onConnectionStateChange!=null){
        widget.onConnectionStateChange!(isDeviceConnected);
      }
    }
  }

  @override
  void initState() {
    _updateConnection();

    Connectivity().onConnectivityChanged.listen((event) {
      _updateConnection();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isDeviceConnected
        ? widget.onConnected ?? const SizedBox.shrink()
        : widget.onDisConnected ?? const SizedBox.shrink();
  }
}
