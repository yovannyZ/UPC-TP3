using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{

   public class TResultadoExamen
    {
       static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();

       public static List<T_RESULTADO_EXAMEN> ObtenerPorPaciente(int idPaciente)
       {
           List<T_RESULTADO_EXAMEN> lista = new List<T_RESULTADO_EXAMEN>();
           try
           {
               lista = context.T_RESULTADO_EXAMEN.Where(c => c.T_TRATAMIENTO_UCI.T_SOLICITUD_UCI.idPaciente == idPaciente).ToList();
           }
           catch (Exception ex)
           {

               Console.Write(ex.Message);
           }
           return lista;
       }

       public static T_RESULTADO_EXAMEN Obtener(int id)
       {
           T_RESULTADO_EXAMEN lista = null;
           try
           {
               lista = context.T_RESULTADO_EXAMEN.Find(id);
           }
           catch (Exception ex)
           {

               Console.Write(ex.Message);
           }
           return lista;
       }

    }
}
