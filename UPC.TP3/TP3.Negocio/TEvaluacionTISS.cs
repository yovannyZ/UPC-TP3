using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{
    public class TEvaluacionTISS
    {
        static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();

        public static List<T_EVALUACION_TISS> Listar()
        {
            List<T_EVALUACION_TISS> lista = new List<T_EVALUACION_TISS>();

            try
            {
                lista = context.T_EVALUACION_TISS.ToList();
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);

            }
            return lista;

        }

        public static T_EVALUACION_TISS Obtener(int id)
        {
            T_EVALUACION_TISS evaluacion = new T_EVALUACION_TISS();

            try
            {
                evaluacion = context.T_EVALUACION_TISS.Find(id);
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);

            }
            return evaluacion;

        }

    }
}
