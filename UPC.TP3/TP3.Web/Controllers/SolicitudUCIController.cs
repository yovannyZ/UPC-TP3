using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TP3.Entidades.EF;
using TP3.Negocio;

namespace TP2.Web.Controllers
{
    public class SolicitudUCIController : Controller
    {
        // GET: PacienteEstado
        public ActionResult Index()
        {
            var listado = TSolicitudUCI.Listar("PEN");
            return View(listado);
        }

        public ActionResult Evaluar(int id)
        {
            var solicitud = TSolicitudUCI.Obtener(id);
            return View(solicitud);
        }

        [HttpPost]
        public string Evaluar(int idSolicitud, string tipoEquipoMedico, string dscMedicinaTraslado, 
            string tipoTraslado, string estado ,string observacion)
        {
            string mensaje = "Error al grabar los datos";

            var solicitud = TSolicitudUCI.Obtener(idSolicitud);
            solicitud.tipoEquipoMedico = tipoEquipoMedico;
            solicitud.dscMedicinaTraslado = dscMedicinaTraslado;
            solicitud.tipoTraslado = tipoTraslado;
            solicitud.estadoSolicitud = estado;
            solicitud.fechaEvaluacion = DateTime.Now;

            bool esValido= TSolicitudUCI.Actualizar(solicitud);

            T_TRATAMIENTO_UCI tratamiento = new T_TRATAMIENTO_UCI();
            tratamiento.fechaTratamiento = DateTime.Now;
            tratamiento.observacion = observacion;
            tratamiento.idSolicitud = solicitud.idSolicitud;
            TTratamientoUCI.Insertar(tratamiento);

            string emailMedicoSolicitante = solicitud.T_RESULTADO_ATENCION.T_EMPLEADO.dscCorreo;
            string emailPariente = solicitud.T_PACIENTE.dscCorreoFamiliar;
            string emailRecpcionistaAdim = "recepcion.ripalma@gmail.com";
            string emailMedicoAprobador = "modulouci@gmail.com";
            bool correoenviado = false;

            if (esValido)
            {
                if (estado == "APR")
                {
                    if (emailPariente == "")
                    {
                        Util.mandarNotificacionRecepcionistaAdmin(emailRecpcionistaAdim, "APR", solicitud.T_RESULTADO_ATENCION.T_EMPLEADO.nomEmpleado,
                            "Joselyn Rojas", solicitud.fechaEvaluacion, solicitud.T_PACIENTE.T_PERSONA.nompersona);

                    }
                    else
                    {
                        Util.mandarNotificacionPariente(emailPariente, "APR", solicitud.T_RESULTADO_ATENCION.T_EMPLEADO.nomEmpleado,
                            "Joselyn Rojas", solicitud.fechaEvaluacion);
                    }


                     correoenviado = Util.mandarNotificacionMedico(emailMedicoSolicitante + "," + emailMedicoAprobador, solicitud.T_PACIENTE.T_PERSONA.nompersona,
                        solicitud.gravedadPaciente, solicitud.T_EMPLEADO.T_PERSONA.nompersona, solicitud.estadoSolicitud,
                        solicitud.T_PACIENTE.T_HISTORIA_CLINICA.FirstOrDefault().nroHistoriaClinica, solicitud.dscMedicinaTraslado, solicitud.numeroSolicitud, solicitud.tipoEquipoMedico, solicitud.tipoTraslado,
                        solicitud.fechaEvaluacion, observacion);

                }
                else
                {
                    correoenviado = Util.mandarNotificacionMedico(emailMedicoSolicitante , solicitud.T_PACIENTE.T_PERSONA.nompersona,
                        solicitud.gravedadPaciente, solicitud.T_EMPLEADO.T_PERSONA.nompersona, solicitud.estadoSolicitud,
                        solicitud.T_PACIENTE.T_HISTORIA_CLINICA.FirstOrDefault().nroHistoriaClinica, solicitud.dscMedicinaTraslado, solicitud.numeroSolicitud, solicitud.tipoEquipoMedico, solicitud.tipoTraslado,
                        solicitud.fechaEvaluacion, observacion);
                }

                if (correoenviado)
                {
                    if (estado == "APR")
                        mensaje = "La solicitud del paciente ha sido aprobada.Las notificaciones han sido enviadas.";
                    else
                        mensaje = "La solicitud del paciente ha sido rechazada. La notificación al médico solicitante ha sido enviada.";

                }
                else
                {
                    if (estado == "APR")
                        mensaje = "La solicitud del paciente ha sido aprobada.Las notificaciones no han sido enviadas.";
                    else
                        mensaje = "La solicitud del paciente ha sido rechazada. La notificación al médico solicitante  no ha sido enviada.";

                }
            }


            return mensaje;
        }

        public ActionResult HistoriaClinica(int id)
        {
            var paciente = TPaciente.Obtener(id);
            return View(paciente);
        }

        public ActionResult DetalleHistoria(int id)
        {
            var resultado = TResultadoAtencion.Obtener(id);
            return View(resultado);
        }

        public ActionResult Examenes(int id)
        {
            var resultado = TResultadoAtencion.Obtener(id);
            return View(resultado);
        }
       

    }
}