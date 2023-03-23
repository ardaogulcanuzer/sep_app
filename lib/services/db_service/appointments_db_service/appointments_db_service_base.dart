import 'package:sep_app/models/appointment_model.dart';

abstract class AppointmentsDbServiceBase {
  Future<AppointmentModel> getAppointment(String appointmentId);
  Future<List<AppointmentModel>> getAppointmentsByPatientId(String patientId);
  Future<List<AppointmentModel>> getAppointmentsByDoctorId(String doctorId);
  Future<bool> updateAppointment(String appointmentId, AppointmentModel updatedVersion);
}