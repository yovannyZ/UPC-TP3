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
    
    public partial class T_ACTA_EJEC_MANTENIMIENTO
    {
        public T_ACTA_EJEC_MANTENIMIENTO()
        {
            this.T_ACTA_EJEC_MANTENIMIENTO_DET = new HashSet<T_ACTA_EJEC_MANTENIMIENTO_DET>();
        }
    
        public int idActaEjecMant { get; set; }
        public Nullable<System.DateTime> fechaInicioEjecMant { get; set; }
        public Nullable<System.DateTime> fechaFinEjecMant { get; set; }
        public Nullable<int> codEmpresa { get; set; }
        public Nullable<int> idMantEquipo { get; set; }
        public string tecnicoMantExterno { get; set; }
        public string ObsPlanEjecMant { get; set; }
        public Nullable<int> idEquipoMedico { get; set; }
        public string estEjecMant { get; set; }
    
        public virtual T_EMPRESA T_EMPRESA { get; set; }
        public virtual ICollection<T_ACTA_EJEC_MANTENIMIENTO_DET> T_ACTA_EJEC_MANTENIMIENTO_DET { get; set; }
        public virtual T_EQUIPO_MEDICO T_EQUIPO_MEDICO { get; set; }
        public virtual T_MANTENIMIENTO_EQUIPO T_MANTENIMIENTO_EQUIPO { get; set; }
    }
}
