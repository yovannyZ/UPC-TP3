using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{
    public class TRecomendacionTratamiento
    {
        static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();

        public static T_RECOMENDACION_TRATAMIENTO ObtenerPorPuntuacion(int puntuacion)
        {
            T_RECOMENDACION_TRATAMIENTO recomendacion = null;
            try
            {
                recomendacion = context.T_RECOMENDACION_TRATAMIENTO.Where(c => c.puntuacionTotal == puntuacion).FirstOrDefault();
            }
            catch (Exception)
            {
                
                throw;
            }
            return recomendacion;
        }

        public static T_RECOMENDACION_TRATAMIENTO Obtener(int id)
        {
            T_RECOMENDACION_TRATAMIENTO recomendacion = null;
            try
            {
                recomendacion = context.T_RECOMENDACION_TRATAMIENTO.Find(id);
            }
            catch (Exception)
            {

                throw;
            }
            return recomendacion;
        }


        public static bool Insertar(T_RECOMENDACION_TRATAMIENTO Recomendacion,T_PACIENTE paciente)
        {
            bool exito = false;

            try
            {
                context.InsertarResultadoExamen(null, DateTime.Now, null, null,null,paciente.T_SOLICITUD_UCI.FirstOrDefault().T_TRATAMIENTO_UCI.FirstOrDefault().idTratamiento, Recomendacion.idRecomendacionTrat);
                context.SaveChanges();
                exito = true;

            }
            catch (Exception)
            {
                exito = false;
            }

            return exito;
        }

    }
}
