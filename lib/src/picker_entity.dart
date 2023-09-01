import 'dart:io';
import 'dart:typed_data';

import 'package:custom_gallery_picker/custom_gallery_picker.dart';

///
class PickerEntity extends AssetEntity {
  ///
  const PickerEntity({
    required String id,
    required int height,
    required int width,
    required int typeInt,
    this.pickedThumbData,
    this.pickedFile,
    int duration = 0,
    int orientation = 0,
    bool isFavorite = false,
    String? title,
    int? createDateSecond,
    int? modifiedDateSecond,
    String? relativePath,
    double? latitude,
    double? longitude,
    String? mimeType,
    int subtype = 0,
  }) : super(
          id: id,
          height: height,
          width: width,
          typeInt: typeInt,
          duration: duration,
          orientation: orientation,
          isFavorite: isFavorite,
          title: title,
          createDateSecond: createDateSecond,
          modifiedDateSecond: modifiedDateSecond,
          relativePath: relativePath,
          latitude: latitude,
          longitude: longitude,
          mimeType: mimeType,
          subtype: subtype,
        );

  /// Thumb bytes of image and video. Dont use this for other asset types.
  /// This
  final Uint8List? pickedThumbData;

  /// Field where asset is stored
  final File? pickedFile;

  ///
  @override
  PickerEntity copyWith({
    Uint8List? pickedThumbData,
    File? pickedFile,
    String? id,
    int? typeInt,
    int? width,
    int? height,
    int? duration,
    int? orientation,
    bool? isFavorite,
    String? title,
    int? createDateSecond,
    int? modifiedDateSecond,
    String? relativePath,
    double? latitude,
    double? longitude,
    String? mimeType,
    int? subtype,
  }) =>
      PickerEntity(
        pickedThumbData: pickedThumbData ?? this.pickedThumbData,
        pickedFile: pickedFile ?? this.pickedFile,
        id: id ?? this.id,
        typeInt: typeInt ?? this.typeInt,
        width: width ?? this.width,
        height: height ?? this.height,
        duration: duration ?? this.duration,
        orientation: orientation ?? this.orientation,
        isFavorite: isFavorite ?? this.isFavorite,
        title: title ?? this.title,
        createDateSecond: createDateSecond ?? this.createDateSecond,
        modifiedDateSecond: modifiedDateSecond ?? this.modifiedDateSecond,
        relativePath: relativePath ?? this.relativePath,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        mimeType: mimeType ?? this.mimeType,
        subtype: subtype ?? this.subtype,
      );
}

/// AssetEntity extension
extension AssetEntityX on AssetEntity {
  /// Convert [AssetEntity] to [PickerEntity]
  PickerEntity get toDrishya => PickerEntity(
        id: id,
        width: width,
        height: height,
        typeInt: typeInt,
        duration: duration,
        orientation: orientation,
        isFavorite: isFavorite,
        title: title,
        createDateSecond: createDateSecond,
        modifiedDateSecond: modifiedDateSecond,
        relativePath: relativePath,
        latitude: latitude,
        longitude: longitude,
        mimeType: mimeType,
      );
}
