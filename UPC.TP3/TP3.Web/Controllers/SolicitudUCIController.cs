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
            TTratamientoUCI.Insertar(tratamiento);

            if (esValido)
            {
                bool correoenviado = Util.mandarNotificacion("modulouci@gmail.com", solicitud.T_PACIENTE.T_PERSONA.nompersona,
                    solicitud.gravedadPaciente, solicitud.T_EMPLEADO.T_PERSONA.nompersona, solicitud.estadoSolicitud,
                    solicitud.T_PACIENTE.T_HISTORIA_CLINICA.FirstOrDefault().nroHistoriaClinica, solicitud.dscMedicinaTraslado,solicitud.numeroSolicitud,solicitud.tipoEquipoMedico,solicitud.tipoTraslado,
                    solicitud.fechaEvaluacion,observacion);

                if (correoenviado)
                {
                    mensaje = "Datos grabadas correctamente y notificaciones enviadas";
                }
                else
                {
                    mensaje = "Datos grabadas correctamente y notificaciones NO enviadas";
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