using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;

namespace TP3.Negocio
{
    public class TTratamientoUCI
    {
        static BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();
        public static bool Insertar(T_TRATAMIENTO_UCI tratamiento)
        {
            bool exito = false;

            try
            {
                context.InsertarTratamientoUCI(tratamiento.fechaTratamiento, tratamiento.resultado, tratamiento.observacion,
                    tratamiento.medicinaTratamiento, tratamiento.frecuencia, tratamiento.idSolicitud);
    
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
