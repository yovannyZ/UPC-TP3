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
    
    public partial class T_EMPRESA
    {
        public T_EMPRESA()
        {
            this.T_ACTA_EJEC_MANTENIMIENTO = new HashSet<T_ACTA_EJEC_MANTENIMIENTO>();
            this.T_MANTENIMIENTO_EQUIPO = new HashSet<T_MANTENIMIENTO_EQUIPO>();
            this.T_MUEBLE = new HashSet<T_MUEBLE>();
            this.T_USUARIO = new HashSet<T_USUARIO>();
        }
    
        public int codEmpresa { get; set; }
        public string nroRuc { get; set; }
        public string razonSocial { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public Nullable<int> codPersona { get; set; }
    
        public virtual ICollection<T_ACTA_EJEC_MANTENIMIENTO> T_ACTA_EJEC_MANTENIMIENTO { get; set; }
        public virtual T_PERSONA T_PERSONA { get; set; }
        public virtual ICollection<T_MANTENIMIENTO_EQUIPO> T_MANTENIMIENTO_EQUIPO { get; set; }
        public virtual ICollection<T_MUEBLE> T_MUEBLE { get; set; }
        public virtual ICollection<T_USUARIO> T_USUARIO { get; set; }
    }
}
