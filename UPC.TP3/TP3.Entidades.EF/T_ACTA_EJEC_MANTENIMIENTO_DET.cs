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
    
    public partial class T_ACTA_EJEC_MANTENIMIENTO_DET
    {
        public int idActaEjecMant { get; set; }
        public int idTareaMant { get; set; }
        public string descTareaMant { get; set; }
    
        public virtual T_ACTA_EJEC_MANTENIMIENTO T_ACTA_EJEC_MANTENIMIENTO { get; set; }
        public virtual T_TAREA_MANTENIMIENTO T_TAREA_MANTENIMIENTO { get; set; }
    }
}
