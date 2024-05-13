// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_request.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PredictionRequestAdapter extends TypeAdapter<PredictionRequest> {
  @override
  final int typeId = 1;

  @override
  PredictionRequest read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PredictionRequest(
      gender: fields[0] as String,
      seniorCitizen: fields[1] as int,
      partner: fields[2] as String,
      dependents: fields[3] as String,
      tenure: fields[4] as int,
      phoneService: fields[5] as String,
      multipleLines: fields[6] as String,
      internetService: fields[7] as String,
      onlineSecurity: fields[8] as String,
      onlineBackup: fields[9] as String,
      deviceProtection: fields[10] as String,
      techSupport: fields[11] as String,
      streamingTV: fields[12] as String,
      streamingMovies: fields[13] as String,
      contract: fields[14] as String,
      paperlessBilling: fields[15] as String,
      paymentMethod: fields[16] as String,
      monthlyCharges: fields[17] as double,
      totalCharges: fields[18] as double,
    );
  }

  @override
  void write(BinaryWriter writer, PredictionRequest obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.gender)
      ..writeByte(1)
      ..write(obj.seniorCitizen)
      ..writeByte(2)
      ..write(obj.partner)
      ..writeByte(3)
      ..write(obj.dependents)
      ..writeByte(4)
      ..write(obj.tenure)
      ..writeByte(5)
      ..write(obj.phoneService)
      ..writeByte(6)
      ..write(obj.multipleLines)
      ..writeByte(7)
      ..write(obj.internetService)
      ..writeByte(8)
      ..write(obj.onlineSecurity)
      ..writeByte(9)
      ..write(obj.onlineBackup)
      ..writeByte(10)
      ..write(obj.deviceProtection)
      ..writeByte(11)
      ..write(obj.techSupport)
      ..writeByte(12)
      ..write(obj.streamingTV)
      ..writeByte(13)
      ..write(obj.streamingMovies)
      ..writeByte(14)
      ..write(obj.contract)
      ..writeByte(15)
      ..write(obj.paperlessBilling)
      ..writeByte(16)
      ..write(obj.paymentMethod)
      ..writeByte(17)
      ..write(obj.monthlyCharges)
      ..writeByte(18)
      ..write(obj.totalCharges);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PredictionRequestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
