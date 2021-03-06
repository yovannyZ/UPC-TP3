﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TP3.Datos.EF
{
    using System;
    using System.Data.Entity;
     using TP3.Entidades.EF;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class BD_CLINICA_RPEntities : DbContext
    {
        public BD_CLINICA_RPEntities()
            : base("name=BD_CLINICA_RPEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<T_ANTECEDENTES> T_ANTECEDENTES { get; set; }
        public virtual DbSet<T_BIEN> T_BIEN { get; set; }
        public virtual DbSet<T_EMPLEADO> T_EMPLEADO { get; set; }
        public virtual DbSet<T_EMPRESA> T_EMPRESA { get; set; }
        public virtual DbSet<T_ESPECIALIDAD_MEDICA> T_ESPECIALIDAD_MEDICA { get; set; }
        public virtual DbSet<T_EVALUACION_SIGNOS_VITALES> T_EVALUACION_SIGNOS_VITALES { get; set; }
        public virtual DbSet<T_EVALUACION_TISS> T_EVALUACION_TISS { get; set; }
        public virtual DbSet<T_EVENTO_HISTORIA_CLINICA> T_EVENTO_HISTORIA_CLINICA { get; set; }
        public virtual DbSet<T_EXAMEN_TRATAMIENTO> T_EXAMEN_TRATAMIENTO { get; set; }
        public virtual DbSet<T_HISTORIA_CLINICA> T_HISTORIA_CLINICA { get; set; }
        public virtual DbSet<T_INMUEBLE> T_INMUEBLE { get; set; }
        public virtual DbSet<T_MODELO> T_MODELO { get; set; }
        public virtual DbSet<T_MUEBLE> T_MUEBLE { get; set; }
        public virtual DbSet<T_ORDEN_ATENCION> T_ORDEN_ATENCION { get; set; }
        public virtual DbSet<T_PACIENTE> T_PACIENTE { get; set; }
        public virtual DbSet<T_PERSONA> T_PERSONA { get; set; }
        public virtual DbSet<T_REGISTRO_UCI> T_REGISTRO_UCI { get; set; }
        public virtual DbSet<T_RESERVA_SERVICIO> T_RESERVA_SERVICIO { get; set; }
        public virtual DbSet<T_RESULTADO_ATENCION> T_RESULTADO_ATENCION { get; set; }
        public virtual DbSet<T_RESULTADO_EXAMEN> T_RESULTADO_EXAMEN { get; set; }
        public virtual DbSet<T_ROL> T_ROL { get; set; }
        public virtual DbSet<T_SERVICIO_SALUD> T_SERVICIO_SALUD { get; set; }
        public virtual DbSet<T_SOLICITUD_UCI> T_SOLICITUD_UCI { get; set; }
        public virtual DbSet<T_TRATAMIENTO_UCI> T_TRATAMIENTO_UCI { get; set; }
        public virtual DbSet<T_USUARIO> T_USUARIO { get; set; }
        public virtual DbSet<T_RECOMENDACION_TRATAMIENTO> T_RECOMENDACION_TRATAMIENTO { get; set; }
    
        public virtual int InsertarSolicitudUCI(Nullable<System.DateTime> fechaSolicitud, string estPaciente, string medSolicitante, string gravedad, string motDesaprobacion, string obsDesaprobacion, Nullable<int> idPaciente)
        {
            var fechaSolicitudParameter = fechaSolicitud.HasValue ?
                new ObjectParameter("fechaSolicitud", fechaSolicitud) :
                new ObjectParameter("fechaSolicitud", typeof(System.DateTime));
    
            var estPacienteParameter = estPaciente != null ?
                new ObjectParameter("estPaciente", estPaciente) :
                new ObjectParameter("estPaciente", typeof(string));
    
            var medSolicitanteParameter = medSolicitante != null ?
                new ObjectParameter("medSolicitante", medSolicitante) :
                new ObjectParameter("medSolicitante", typeof(string));
    
            var gravedadParameter = gravedad != null ?
                new ObjectParameter("gravedad", gravedad) :
                new ObjectParameter("gravedad", typeof(string));
    
            var motDesaprobacionParameter = motDesaprobacion != null ?
                new ObjectParameter("motDesaprobacion", motDesaprobacion) :
                new ObjectParameter("motDesaprobacion", typeof(string));
    
            var obsDesaprobacionParameter = obsDesaprobacion != null ?
                new ObjectParameter("obsDesaprobacion", obsDesaprobacion) :
                new ObjectParameter("obsDesaprobacion", typeof(string));
    
            var idPacienteParameter = idPaciente.HasValue ?
                new ObjectParameter("idPaciente", idPaciente) :
                new ObjectParameter("idPaciente", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertarSolicitudUCI", fechaSolicitudParameter, estPacienteParameter, medSolicitanteParameter, gravedadParameter, motDesaprobacionParameter, obsDesaprobacionParameter, idPacienteParameter);
        }
    
        public virtual int ListarPacientes(string estado)
        {
            var estadoParameter = estado != null ?
                new ObjectParameter("estado", estado) :
                new ObjectParameter("estado", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ListarPacientes", estadoParameter);
        }
    
        public virtual int obtenerPaciente(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("obtenerPaciente", idParameter);
        }
    
        public virtual int ActualizarPaciente(Nullable<int> idPaciente, string dniPaciente, Nullable<System.DateTime> fechNacimiento, string segmentacion, Nullable<int> codPersona, string estado)
        {
            var idPacienteParameter = idPaciente.HasValue ?
                new ObjectParameter("idPaciente", idPaciente) :
                new ObjectParameter("idPaciente", typeof(int));
    
            var dniPacienteParameter = dniPaciente != null ?
                new ObjectParameter("dniPaciente", dniPaciente) :
                new ObjectParameter("dniPaciente", typeof(string));
    
            var fechNacimientoParameter = fechNacimiento.HasValue ?
                new ObjectParameter("fechNacimiento", fechNacimiento) :
                new ObjectParameter("fechNacimiento", typeof(System.DateTime));
    
            var segmentacionParameter = segmentacion != null ?
                new ObjectParameter("segmentacion", segmentacion) :
                new ObjectParameter("segmentacion", typeof(string));
    
            var codPersonaParameter = codPersona.HasValue ?
                new ObjectParameter("codPersona", codPersona) :
                new ObjectParameter("codPersona", typeof(int));
    
            var estadoParameter = estado != null ?
                new ObjectParameter("estado", estado) :
                new ObjectParameter("estado", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ActualizarPaciente", idPacienteParameter, dniPacienteParameter, fechNacimientoParameter, segmentacionParameter, codPersonaParameter, estadoParameter);
        }
    
        public virtual int ActualizarPaciente1(Nullable<int> idPaciente, string dniPaciente, Nullable<System.DateTime> fechNacimiento, string segmentacion, Nullable<int> codPersona, string estado)
        {
            var idPacienteParameter = idPaciente.HasValue ?
                new ObjectParameter("idPaciente", idPaciente) :
                new ObjectParameter("idPaciente", typeof(int));
    
            var dniPacienteParameter = dniPaciente != null ?
                new ObjectParameter("dniPaciente", dniPaciente) :
                new ObjectParameter("dniPaciente", typeof(string));
    
            var fechNacimientoParameter = fechNacimiento.HasValue ?
                new ObjectParameter("fechNacimiento", fechNacimiento) :
                new ObjectParameter("fechNacimiento", typeof(System.DateTime));
    
            var segmentacionParameter = segmentacion != null ?
                new ObjectParameter("segmentacion", segmentacion) :
                new ObjectParameter("segmentacion", typeof(string));
    
            var codPersonaParameter = codPersona.HasValue ?
                new ObjectParameter("codPersona", codPersona) :
                new ObjectParameter("codPersona", typeof(int));
    
            var estadoParameter = estado != null ?
                new ObjectParameter("estado", estado) :
                new ObjectParameter("estado", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ActualizarPaciente1", idPacienteParameter, dniPacienteParameter, fechNacimientoParameter, segmentacionParameter, codPersonaParameter, estadoParameter);
        }
    
        public virtual ObjectResult<ListarPacientes1_Result> ListarPacientes1(string estado)
        {
            var estadoParameter = estado != null ?
                new ObjectParameter("estado", estado) :
                new ObjectParameter("estado", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ListarPacientes1_Result>("ListarPacientes1", estadoParameter);
        }
    
        public virtual ObjectResult<obtenerPaciente1_Result> obtenerPaciente1(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<obtenerPaciente1_Result>("obtenerPaciente1", idParameter);
        }
    
        public virtual int ActualizarSolicitudUCI(Nullable<int> idSolicitud, Nullable<System.DateTime> fechaSolicitud, string observacion, string estadoSolicitud, string gravedadPaciente, Nullable<int> idPaciente, string numeroSolicitud, Nullable<System.DateTime> fechaEvaluacion, string tipoTraslado, string dscMedicinaTraslado, string tipoEquipoMedico, Nullable<int> idEmpleado, Nullable<int> idResultado, Nullable<int> idRegistro)
        {
            var idSolicitudParameter = idSolicitud.HasValue ?
                new ObjectParameter("idSolicitud", idSolicitud) :
                new ObjectParameter("idSolicitud", typeof(int));
    
            var fechaSolicitudParameter = fechaSolicitud.HasValue ?
                new ObjectParameter("fechaSolicitud", fechaSolicitud) :
                new ObjectParameter("fechaSolicitud", typeof(System.DateTime));
    
            var observacionParameter = observacion != null ?
                new ObjectParameter("observacion", observacion) :
                new ObjectParameter("observacion", typeof(string));
    
            var estadoSolicitudParameter = estadoSolicitud != null ?
                new ObjectParameter("estadoSolicitud", estadoSolicitud) :
                new ObjectParameter("estadoSolicitud", typeof(string));
    
            var gravedadPacienteParameter = gravedadPaciente != null ?
                new ObjectParameter("gravedadPaciente", gravedadPaciente) :
                new ObjectParameter("gravedadPaciente", typeof(string));
    
            var idPacienteParameter = idPaciente.HasValue ?
                new ObjectParameter("idPaciente", idPaciente) :
                new ObjectParameter("idPaciente", typeof(int));
    
            var numeroSolicitudParameter = numeroSolicitud != null ?
                new ObjectParameter("numeroSolicitud", numeroSolicitud) :
                new ObjectParameter("numeroSolicitud", typeof(string));
    
            var fechaEvaluacionParameter = fechaEvaluacion.HasValue ?
                new ObjectParameter("fechaEvaluacion", fechaEvaluacion) :
                new ObjectParameter("fechaEvaluacion", typeof(System.DateTime));
    
            var tipoTrasladoParameter = tipoTraslado != null ?
                new ObjectParameter("tipoTraslado", tipoTraslado) :
                new ObjectParameter("tipoTraslado", typeof(string));
    
            var dscMedicinaTrasladoParameter = dscMedicinaTraslado != null ?
                new ObjectParameter("dscMedicinaTraslado", dscMedicinaTraslado) :
                new ObjectParameter("dscMedicinaTraslado", typeof(string));
    
            var tipoEquipoMedicoParameter = tipoEquipoMedico != null ?
                new ObjectParameter("tipoEquipoMedico", tipoEquipoMedico) :
                new ObjectParameter("tipoEquipoMedico", typeof(string));
    
            var idEmpleadoParameter = idEmpleado.HasValue ?
                new ObjectParameter("idEmpleado", idEmpleado) :
                new ObjectParameter("idEmpleado", typeof(int));
    
            var idResultadoParameter = idResultado.HasValue ?
                new ObjectParameter("idResultado", idResultado) :
                new ObjectParameter("idResultado", typeof(int));
    
            var idRegistroParameter = idRegistro.HasValue ?
                new ObjectParameter("idRegistro", idRegistro) :
                new ObjectParameter("idRegistro", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ActualizarSolicitudUCI", idSolicitudParameter, fechaSolicitudParameter, observacionParameter, estadoSolicitudParameter, gravedadPacienteParameter, idPacienteParameter, numeroSolicitudParameter, fechaEvaluacionParameter, tipoTrasladoParameter, dscMedicinaTrasladoParameter, tipoEquipoMedicoParameter, idEmpleadoParameter, idResultadoParameter, idRegistroParameter);
        }
    
        public virtual int InsertarTratamientoUCI(Nullable<System.DateTime> fechaTratamiento, string resultado, string observacion, string medicinaTratamiento, string frecuencia, Nullable<int> idSolicitud)
        {
            var fechaTratamientoParameter = fechaTratamiento.HasValue ?
                new ObjectParameter("fechaTratamiento", fechaTratamiento) :
                new ObjectParameter("fechaTratamiento", typeof(System.DateTime));
    
            var resultadoParameter = resultado != null ?
                new ObjectParameter("resultado", resultado) :
                new ObjectParameter("resultado", typeof(string));
    
            var observacionParameter = observacion != null ?
                new ObjectParameter("observacion", observacion) :
                new ObjectParameter("observacion", typeof(string));
    
            var medicinaTratamientoParameter = medicinaTratamiento != null ?
                new ObjectParameter("medicinaTratamiento", medicinaTratamiento) :
                new ObjectParameter("medicinaTratamiento", typeof(string));
    
            var frecuenciaParameter = frecuencia != null ?
                new ObjectParameter("frecuencia", frecuencia) :
                new ObjectParameter("frecuencia", typeof(string));
    
            var idSolicitudParameter = idSolicitud.HasValue ?
                new ObjectParameter("idSolicitud", idSolicitud) :
                new ObjectParameter("idSolicitud", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertarTratamientoUCI", fechaTratamientoParameter, resultadoParameter, observacionParameter, medicinaTratamientoParameter, frecuenciaParameter, idSolicitudParameter);
        }
    
        public virtual int InsertarResultadoExamen(Nullable<System.DateTime> fechaExamen, Nullable<System.DateTime> fechaResultado, string diagnostico, string tipoExamen, Nullable<int> idResultado, Nullable<int> idTratamenito, Nullable<int> idRecomendacion)
        {
            var fechaExamenParameter = fechaExamen.HasValue ?
                new ObjectParameter("fechaExamen", fechaExamen) :
                new ObjectParameter("fechaExamen", typeof(System.DateTime));
    
            var fechaResultadoParameter = fechaResultado.HasValue ?
                new ObjectParameter("fechaResultado", fechaResultado) :
                new ObjectParameter("fechaResultado", typeof(System.DateTime));
    
            var diagnosticoParameter = diagnostico != null ?
                new ObjectParameter("diagnostico", diagnostico) :
                new ObjectParameter("diagnostico", typeof(string));
    
            var tipoExamenParameter = tipoExamen != null ?
                new ObjectParameter("tipoExamen", tipoExamen) :
                new ObjectParameter("tipoExamen", typeof(string));
    
            var idResultadoParameter = idResultado.HasValue ?
                new ObjectParameter("idResultado", idResultado) :
                new ObjectParameter("idResultado", typeof(int));
    
            var idTratamenitoParameter = idTratamenito.HasValue ?
                new ObjectParameter("idTratamenito", idTratamenito) :
                new ObjectParameter("idTratamenito", typeof(int));
    
            var idRecomendacionParameter = idRecomendacion.HasValue ?
                new ObjectParameter("idRecomendacion", idRecomendacion) :
                new ObjectParameter("idRecomendacion", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertarResultadoExamen", fechaExamenParameter, fechaResultadoParameter, diagnosticoParameter, tipoExamenParameter, idResultadoParameter, idTratamenitoParameter, idRecomendacionParameter);
        }
    }
}
