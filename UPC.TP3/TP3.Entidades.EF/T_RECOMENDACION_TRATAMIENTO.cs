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
    
    public partial class T_RECOMENDACION_TRATAMIENTO
    {
        public T_RECOMENDACION_TRATAMIENTO()
        {
            this.T_RESULTADO_EXAMEN = new HashSet<T_RESULTADO_EXAMEN>();
        }
    
        public int idRecomendacionTrat { get; set; }
        public string definicionReco { get; set; }
        public Nullable<int> puntuacionTotal { get; set; }
        public string gradoMedico { get; set; }
        public string clasificacionTiss { get; set; }
        public string relacionCamaEnfer { get; set; }
    
        public virtual ICollection<T_RESULTADO_EXAMEN> T_RESULTADO_EXAMEN { get; set; }
    }
}
