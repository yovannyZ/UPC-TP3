using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
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

        
        public ActionResult Detalle(string id)
        {
            var resultado = TResultadoExamen.Obtener(int.Parse(id));

            return View(resultado);
        }

        public ActionResult Imprimir(int id)
        {
            var Paciente = TPaciente.Obtener(id);
            var resultado = TResultadoExamen.ObtenerPorPaciente(id);

            Byte[] bytes;
            using (var ms = new MemoryStream())
            {
                using (var doc = new Document())
                {

                    var writer = PdfWriter.GetInstance(doc, ms);

                    doc.Open();
                    // Creamos el tipo de Font que vamos utilizar
                    iTextSharp.text.Font _standardFont = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA, 8, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);

                    // Escribimos el encabezamiento en el documento
                    doc.Add(new Paragraph("Tratamientos del paciente :    " + Paciente.T_PERSONA.nompersona + "       DNI: " + Paciente.dniPaciente));
                    doc.Add(Chunk.NEWLINE);

                    // Creamos una tabla que contendrá las partidas
                    PdfPTable tblPrueba = new PdfPTable(6);
                    tblPrueba.WidthPercentage = 100;

                    // Configuramos el título de las columnas de la tabla
                    PdfPCell clGrado = new PdfPCell(new Phrase("Grado", _standardFont));
                    clGrado.BorderWidth = 0;
                    clGrado.BorderWidthBottom = 0.30f;
                    

                    PdfPCell clPuntuacion = new PdfPCell(new Phrase("Puntuación", _standardFont));
                    clPuntuacion.BorderWidth = 0;
                    clPuntuacion.BorderWidthBottom = 0.30f;

                    PdfPCell clClasi = new PdfPCell(new Phrase("Clasificación", _standardFont));
                    clClasi.BorderWidth = 0;
                    clClasi.BorderWidthBottom = 0.30f;

                    PdfPCell clTrata = new PdfPCell(new Phrase("Tratamiento", _standardFont));
                    clTrata.BorderWidth = 0;
                    clTrata.BorderWidthBottom = 0.30f;

                    PdfPCell clHora = new PdfPCell(new Phrase("Horario", _standardFont));
                    clHora.BorderWidth = 0;
                    clHora.BorderWidthBottom = 0.30f;

                    PdfPCell clEnfermera = new PdfPCell(new Phrase("Enfermera", _standardFont));
                    clEnfermera.BorderWidth = 0;
                    clEnfermera.BorderWidthBottom = 0.30f;

                    // Añadimos las celdas a la tabla
                    tblPrueba.AddCell(clGrado);
                    tblPrueba.AddCell(clPuntuacion);
                    tblPrueba.AddCell(clClasi);
                    tblPrueba.AddCell(clTrata);
                    tblPrueba.AddCell(clHora);
                    tblPrueba.AddCell(clEnfermera);

                  
                    foreach (var item in resultado)
                    {

                        clGrado = new PdfPCell(new Phrase(item.T_RECOMENDACION_TRATAMIENTO.gradoMedico, _standardFont));
                        clGrado.BorderWidth = 0;

                        clPuntuacion = new PdfPCell(new Phrase(item.T_RECOMENDACION_TRATAMIENTO.puntuacionTotal.ToString(), _standardFont));
                        clPuntuacion.BorderWidth = 0;

                        clClasi = new PdfPCell(new Phrase(item.T_RECOMENDACION_TRATAMIENTO.clasificacionTiss, _standardFont));
                        clClasi.BorderWidth = 0;

                        clTrata = new PdfPCell(new Phrase(item.T_RECOMENDACION_TRATAMIENTO.definicionReco, _standardFont));
                        clTrata.BorderWidth = 0;

                        clHora = new PdfPCell(new Phrase(item.fechaResultado.ToString(), _standardFont));
                        clHora.BorderWidth = 0;

                        clEnfermera= new PdfPCell(new Phrase(item.T_TRATAMIENTO_UCI.T_SOLICITUD_UCI.T_EMPLEADO.T_PERSONA.nompersona, _standardFont));
                        clEnfermera.BorderWidth = 0;

                      

                        // Añadimos las celdas a la tabla
                        tblPrueba.AddCell(clGrado);
                        tblPrueba.AddCell(clPuntuacion);
                        tblPrueba.AddCell(clClasi);
                        tblPrueba.AddCell(clTrata);
                        tblPrueba.AddCell(clHora);
                        tblPrueba.AddCell(clEnfermera);

                    }
                    doc.Add(Chunk.NEWLINE);
                    doc.Add(tblPrueba);


                }
                bytes = ms.ToArray();

                Response.ClearContent();
                Response.BinaryWrite(bytes);
                Response.AddHeader("content-disposition", "attachment;filename=Tratamiento" + Paciente.dniPaciente+ ".pdf");
                Response.ContentType = "application/pdf";
                Response.Flush();
                Response.End();
            }

            return Json("Datos exportados correctamente", JsonRequestBehavior.AllowGet);
        }

    }
}