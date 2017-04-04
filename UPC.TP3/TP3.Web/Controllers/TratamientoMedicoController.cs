using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TP3.Negocio;

namespace TP2.Web.Controllers
{
    public class TratamientoMedicoController : Controller
    {
        // GET: TratamiendoMedico
        public ActionResult Index()
        {
            var listaPacientesUCI = TSolicitudUCI.Listar("APR");
            ViewBag.listaPacientes = new SelectList(listaPacientesUCI, "IdPaciente", "T_PACIENTE.T_PERSONA.nompersona");

            var evaluacionTISS = TEvaluacionTISS.Listar();
            return View(evaluacionTISS);
        }


       
        public ActionResult Generar(int puntuacion, string idPaciente)
        {
            var Trecomendacion = TRecomendacionTratamiento.ObtenerPorPuntuacion(puntuacion);
            var paciente = TPaciente.Obtener(int.Parse(idPaciente));
            var resultado = TResultadoExamen.ObtenerPorPaciente(paciente.idPaciente);
        
            ViewBag.paciente = paciente;
            ViewBag.resultado = resultado;
        
            return View(Trecomendacion);
        }

        [HttpPost]
        public string Generar(int idRecomendacion, string obsEnfermera, string idPaciente)
        {
            string mensaje = "Error al grabar los datos";
            var Trecomendacion = TRecomendacionTratamiento.Obtener(idRecomendacion);
            var paciente = TPaciente.Obtener(int.Parse(idPaciente));
            bool esValido = TRecomendacionTratamiento.Insertar(Trecomendacion, paciente);


            if (esValido)
            {
                mensaje = "Se guardaron los datos y se enviaron las notificaiones al médico UCI";
            }

            return mensaje;
        }

        [HttpPost]
        public ActionResult VerDetalleExamenResultado(string idRecomendacion)
        {
            var resultado = TResultadoExamen.Obtener(int.Parse(idRecomendacion));

            return Json(resultado, JsonRequestBehavior.AllowGet);
        }
    }
}