import 'package:flutter/material.dart';

abstract final class AppColors {
  // ── Backgrounds ──────────────────────────────────────────────────────────
  static const background     = Color(0xFF0C0D18); // deep indigo-black
  static const surface        = Color(0xFF13152A); // dark indigo surface
  static const surfaceElevated= Color(0xFF1C1F3A); // elevated indigo card
  static const surfaceHigh    = Color(0xFF242750); // higher elevation

  // ── Borders ───────────────────────────────────────────────────────────────
  static const border         = Color(0xFF2E3260); // indigo border
  static const borderSubtle   = Color(0xFF1E2140); // very subtle border

  // ── Text ──────────────────────────────────────────────────────────────────
  static const primaryText    = Color(0xFFDDD4FC); // #ddd4fc — lavender white
  static const secondaryText  = Color(0xFF8B87C0); // muted indigo-lavender
  static const mutedText      = Color(0xFF4A4875); // dimmed

  // ── Primary Accent — Indigo ───────────────────────────────────────────────
  static const accent         = Color(0xFF545EAB); // #545eab — indigo accent
  static const accentBright   = Color(0xFF6B78CC); // lighter hover state
  static const accentDim      = Color(0xFF3A4280); // dimmed indigo
  static const accentSubtle   = Color(0xFF1A1E40); // very subtle fill

  // ── Secondary Accent — Olive Gold ─────────────────────────────────────────
  static const gold           = Color(0xFFABA454); // #aba454 — olive gold
  static const goldDim        = Color(0xFF7A7538); // darker olive
  static const goldSubtle     = Color(0xFF252210); // subtle gold fill

  // ── Lavender highlight ────────────────────────────────────────────────────
  static const lavender       = Color(0xFFDDD4FC); // #ddd4fc — same as primaryText
  static const lavenderDim    = Color(0xFF9B92D4); // mid lavender
  static const lavenderSubtle = Color(0xFF1A1830); // subtle lavender fill

  // ── Semantic ──────────────────────────────────────────────────────────────
  static const danger         = Color(0xFF8B3A5C); // indigo-rose danger
  static const dangerSubtle   = Color(0xFF2A1020);
  static const success        = Color(0xFF3A6A5C); // muted teal-green
  static const successSubtle  = Color(0xFF0A2018);
  static const warning        = Color(0xFF7A6A30); // muted gold-warning
  static const warningSubtle  = Color(0xFF1E1A08);

  // ── Glass ─────────────────────────────────────────────────────────────────
  static const glassOverlay   = Color(0x10545EAB); // indigo tinted glass
  static const glassBorder    = Color(0x28DDD4FC); // lavender glass border

  // ── Document type badges ──────────────────────────────────────────────────
  static const typeReport       = Color(0xFF3D4A9A); // deep indigo
  static const typePolicy       = Color(0xFF6A4A9A); // violet
  static const typeMemo         = Color(0xFF3A6A5C); // teal
  static const typeLegislation  = Color(0xFF8A5A2A); // amber-brown
  static const typeSpeech       = Color(0xFF545EAB); // accent indigo
  static const typeIntelligence = Color(0xFF7A3A5C); // rose-indigo
}
