import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool newCustomFunction(String email) {
  if (email.endsWith('@gmail.com') ||
      email.endsWith('@hotmail.com') ||
      email.endsWith('@icloud.com') ||
      email.endsWith('@outlook.com') ||
      email.endsWith('@laviaalexito.com')) {
    return true;
  }
  return false;
}

bool filtroLVAE(String correo) {
  if (correo.endsWith('@laviaalexito.com')) {
    return true;
  }
  return false;
}
