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
            var HistoriaClinica = context.T_HISTORIA_CLINICA.Find(id);
            return HistoriaClinica;

        }
    }
}
