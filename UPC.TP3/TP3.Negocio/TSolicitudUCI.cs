using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{
    public class TSolicitudUCI
    {
        static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();
        public static bool Insertar(T_SOLICITUD_UCI solicitud)
        {
            bool exito = false;
            try
            {
                context.InsertarSolicitudUCI(DateTime.Now, solicitud.estPaciente,solicitud.medSolicitante,
                    solicitud.gravedad,solicitud.motDesaprobacion,solicitud.obsDesaprobacion,
                    solicitud.T_PACIENTE.idPaciente);
                context.SaveChanges();
                exito = true;
            }
            catch (Exception)
            {
                throw;
            }

            return exito;
        }
    }
}
