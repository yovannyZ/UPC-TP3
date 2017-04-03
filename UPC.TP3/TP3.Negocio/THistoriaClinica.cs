using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{
    public class THistoriaClinica
    {
        static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();

        public static T_HISTORIA_CLINICA Obtener( int id)
        {
            T_HISTORIA_CLINICA HistoriaClinica = null;
            try
            {
                HistoriaClinica = context.T_HISTORIA_CLINICA.Find(id);
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
            }
          
            return HistoriaClinica;
        }

        public static List<T_HISTORIA_CLINICA> Listar()
        {
            List<T_HISTORIA_CLINICA> lista = new List<T_HISTORIA_CLINICA>();

            try
            {
                lista = context.T_HISTORIA_CLINICA.ToList();
            }
            catch (Exception ex)
            {

                Console.Write(ex.Message);
            }

            return lista;
          
        }
    }
}
