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
            this.T_MUEBLE = new HashSet<T_MUEBLE>();
        }
    
        public int codEmpresa { get; set; }
        public string nroRuc { get; set; }
        public string razonSocial { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public Nullable<int> codPersona { get; set; }
    
        public virtual ICollection<T_MUEBLE> T_MUEBLE { get; set; }
    }
}
