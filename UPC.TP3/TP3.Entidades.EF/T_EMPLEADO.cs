//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TP3.Entidades.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class T_EMPLEADO
    {
        public T_EMPLEADO()
        {
            this.T_USUARIO = new HashSet<T_USUARIO>();
            this.T_RESULTADO_ATENCION = new HashSet<T_RESULTADO_ATENCION>();
            this.T_RESERVA_SERVICIO = new HashSet<T_RESERVA_SERVICIO>();
            this.T_SOLICITUD_UCI = new HashSet<T_SOLICITUD_UCI>();
        }
    
        public int idEmpleado { get; set; }
        public Nullable<int> nroDni { get; set; }
        public string nomEmpleado { get; set; }
        public Nullable<System.DateTime> fecIngreso { get; set; }
        public string stdEmplead { get; set; }
        public string dscCargo { get; set; }
        public string dscProfesion { get; set; }
        public string dscArea { get; set; }
        public string dscCorreo { get; set; }
        public Nullable<int> idEspecialidad { get; set; }
        public Nullable<int> codPersona { get; set; }
    
        public virtual ICollection<T_USUARIO> T_USUARIO { get; set; }
        public virtual T_ESPECIALIDAD_MEDICA T_ESPECIALIDAD_MEDICA { get; set; }
        public virtual T_PERSONA T_PERSONA { get; set; }
        public virtual ICollection<T_RESULTADO_ATENCION> T_RESULTADO_ATENCION { get; set; }
        public virtual ICollection<T_RESERVA_SERVICIO> T_RESERVA_SERVICIO { get; set; }
        public virtual ICollection<T_SOLICITUD_UCI> T_SOLICITUD_UCI { get; set; }
    }
}
