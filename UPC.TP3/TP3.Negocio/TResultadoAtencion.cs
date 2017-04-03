using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{
    public class TResultadoAtencion
    {
        static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();

        public static List<T_RESULTADO_ATENCION> Listar()
        {
            List<T_RESULTADO_ATENCION> lista = new List<T_RESULTADO_ATENCION>();

            try
            {
                lista = context.T_RESULTADO_ATENCION.ToList();
            }
            catch (Exception ex)
            {

                Console.Write(ex.Message);
            }

            return lista;

        }

        public static T_RESULTADO_ATENCION Obtener(int id)
        {
            T_RESULTADO_ATENCION resultado = new T_RESULTADO_ATENCION();

            try
            {
                resultado = context.T_RESULTADO_ATENCION.Find(id);
            }
            catch (Exception ex)
            {

                Console.Write(ex.Message);
            }

            return resultado;

        }
    }
}
