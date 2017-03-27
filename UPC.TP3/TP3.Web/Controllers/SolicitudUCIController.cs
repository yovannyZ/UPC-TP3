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
            var listado = TPaciente.Listar("En Evaluación");
            return View(listado);
        }


        public ActionResult Aprobar(int id)
        {
            var paciente = TPaciente.Obtener(id);
            return View(paciente);
        }

        [HttpPost]
        public string Aprobar(int idPaciente, string observacion, string gravedad,string Historia)
        {
            string mensaje = "Error al grabar los datos";

            var paciente = TPaciente.Obtener(idPaciente);
            paciente.estado = "Aprobado";

            T_SOLICITUD_UCI Solicitud = new T_SOLICITUD_UCI();
            Solicitud.estPaciente = paciente.estado;
            Solicitud.medSolicitante = "OTOYA ZAPATA MARIA FERNANDA";
            Solicitud.gravedad = gravedad;
            Solicitud.motDesaprobacion = "";
            Solicitud.obsDesaprobacion = observacion;
            Solicitud.idPaciente = paciente.idPaciente;
            Solicitud.T_PACIENTE = paciente;

            TPaciente.Actualizar(paciente);

            bool esValido = TSolicitudUCI.Insertar(Solicitud);

            if (esValido)
            {
                bool correoenviado = Util.mandarNotificacion("modulouci@gmail.com", Solicitud.T_PACIENTE.T_PERSONA.nompersona, Solicitud.gravedad, Solicitud.medSolicitante, Solicitud.estPaciente, Historia);

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

        public ActionResult Desaprobar(int id)
        {
            var paciente = TPaciente.Obtener(id);
            return View(paciente);
        }

        [HttpPost]
        public string Desaprobar(int idPaciente, string observacion, string gravedad , string  Historia)
        {
            string mensaje = "Error al grabar los datos";

            var paciente = TPaciente.Obtener(idPaciente);
            paciente.estado = "Desaprobado";

            T_SOLICITUD_UCI Solicitud = new T_SOLICITUD_UCI();
            Solicitud.estPaciente = paciente.estado;
            Solicitud.medSolicitante = "OTOYA ZAPATA MARIA FERNANDA";
            Solicitud.gravedad = gravedad;
            Solicitud.motDesaprobacion = "";
            Solicitud.obsDesaprobacion = observacion;
            Solicitud.idPaciente = paciente.idPaciente;
            Solicitud.T_PACIENTE = paciente;

            TPaciente.Actualizar(paciente);

            bool esValido = TSolicitudUCI.Insertar(Solicitud);

            if (esValido)
            {
                bool correoenviado = Util.mandarNotificacion("modulouci@gmail.com", Solicitud.T_PACIENTE.T_PERSONA.nompersona, Solicitud.gravedad, Solicitud.medSolicitante, Solicitud.estPaciente, Historia);

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

    }
}