using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TP2.Web.Controllers
{
    public class InterconsultaController : Controller
    {
        // GET: Interconsulta
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Registrar()
        {
            return View();
        }

        public ActionResult Consultas()
        {
            return View();
        }
    }
}