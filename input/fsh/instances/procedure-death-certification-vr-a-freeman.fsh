Instance: procedure-death-certification-vr-a-freeman
InstanceOf: DeathCertification
Title: "Procedure - Death Certification Vital Records - A Freeman"
Description: "Example "
Usage: #example
* identifier.value = "180"
* status = #completed
* subject.reference = "Patient/us-core-patient-vr-a-freeman"
* performedDateTime = "2022-01-18T16:39:40-05:00"
* performer
  * function = $sct#455381000124109 "Death certification by medical examiner or coroner (procedure)"
  * actor = Reference(practitioner-vital-records-janet-seito) // "Practitioner/us-core-practitioner-vr-s-jones"