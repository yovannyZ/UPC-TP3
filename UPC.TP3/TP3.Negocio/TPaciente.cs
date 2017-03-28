using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TP3.Datos.EF;
using TP3.Entidades.EF;


namespace TP3.Negocio
{
    public class TPaciente
    {
       static  BD_CLINICA_RPEntities context = new BD_CLINICA_RPEntities();
        public static List<T_PACIENTE> Listar(string estado)
        {

            List<T_PACIENTE> lista = new List<T_PACIENTE>();
            try
            {
                lista = context.T_PACIENTE.Where(c => c.estado == "En Evaluación").ToList();
            }
            catch (Exception)
            {
                throw;
            }
            return lista;
        }

        public static T_PACIENTE Obtener(int id)
        {
            T_PACIENTE Paciente = null;
            try
            {
                Paciente = context.obtenerPaciente(id).FirstOrDefault();
            }
            catch (Exception)
            {
                throw;
            }

            return Paciente;
        }

        public static bool Actualizar(T_PACIENTE paciente)
        {
            bool exito = false;

            try
            {
                context.ActualizarPaciente(paciente.idPaciente, paciente.dniPaciente,
                    paciente.fechNacimiento, paciente.segmentacion, paciente.T_PERSONA.
                    codPersona, paciente.estado);

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
