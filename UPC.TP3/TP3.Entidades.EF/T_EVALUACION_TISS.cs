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
    
    public partial class T_EVALUACION_TISS
    {
        public int idEvaluacionTiss { get; set; }
        public string definicion { get; set; }
        public string puntuacion { get; set; }
        public string clase { get; set; }
        public Nullable<int> idResultadoExamen { get; set; }
    
        public virtual T_RESULTADO_EXAMEN T_RESULTADO_EXAMEN { get; set; }
    }
}