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

        public static List<T_SOLICITUD_UCI> Listar(string estado)
        {
            List<T_SOLICITUD_UCI> lista = new List<T_SOLICITUD_UCI>();

            try
            {
                lista = context.T_SOLICITUD_UCI.Where(c => c.estadoSolicitud == estado).ToList();
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
                
            }
            return lista;

        }

        public static T_SOLICITUD_UCI Obtener(int id)
        {
            T_SOLICITUD_UCI solicitud = new T_SOLICITUD_UCI();

            try
            {
                solicitud = context.T_SOLICITUD_UCI.Find(id);
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);

            }
            return solicitud;

        }

        public static bool Actualizar(T_SOLICITUD_UCI solicitud)
        {
            bool exito = false;

            try
            {
                context.ActualizarSolicitudUCI(solicitud.idSolicitud,solicitud.fechaSolicitud,solicitud.observacion,
                    solicitud.estadoSolicitud,solicitud.gravedadPaciente,solicitud.idPaciente,solicitud.numeroSolicitud,
                    solicitud.fechaEvaluacion,solicitud.tipoTraslado,solicitud.dscMedicinaTraslado,solicitud.tipoEquipoMedico,
                    solicitud.idEmpleado,solicitud.idResultado,solicitud.idRegistro);

                context.SaveChanges();
                exito = true;

            }
            catch (Exception ex)
            {
                exito = false;
            }

            return exito;
        }

      
    }
}
