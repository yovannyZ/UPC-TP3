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
    }
}