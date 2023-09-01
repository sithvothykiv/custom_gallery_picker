import 'package:collection/collection.dart';
import 'package:custom_gallery_picker/custom_gallery_picker.dart';
import 'package:flutter/material.dart';

///
@immutable
class GalleryValue {
  ///
  const GalleryValue({
    this.selectedEntities = const <PickerEntity>[],
    this.isAlbumVisible = false,
    this.enableMultiSelection = false,
  });

  ///
  final List<PickerEntity> selectedEntities;

  ///
  final bool isAlbumVisible;

  ///
  final bool enableMultiSelection;

  ///
  GalleryValue copyWith({
    List<PickerEntity>? selectedEntities,
    bool? isAlbumVisible,
    bool? enableMultiSelection,
  }) {
    return GalleryValue(
      selectedEntities: selectedEntities ?? this.selectedEntities,
      isAlbumVisible: isAlbumVisible ?? this.isAlbumVisible,
      enableMultiSelection: enableMultiSelection ?? this.enableMultiSelection,
    );
  }

  @override
  String toString() {
    return '''
    GalleryValue(
      selectedEntities: $selectedEntities, 
      isAlbumVisible: $isAlbumVisible, 
      enableMultiSelection: $enableMultiSelection
    )''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is GalleryValue &&
        listEquals(other.selectedEntities, selectedEntities) &&
        other.isAlbumVisible == isAlbumVisible &&
        other.enableMultiSelection == enableMultiSelection;
  }

  @override
  int get hashCode {
    return selectedEntities.hashCode ^
        isAlbumVisible.hashCode ^
        enableMultiSelection.hashCode;
  }
}
