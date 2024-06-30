namespace DXWebAdmisiones.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Inscripcion")]
    public partial class Inscripcion
    {
        [Key]
        public int codigo { get; set; }

        public int codigoAspirante { get; set; }

        [Required]
        [StringLength(100)]
        public string modalidad { get; set; }

        public int codigoSede { get; set; }

        public int codigoPrograma { get; set; }

        [Required]
        [StringLength(100)]
        public string periodoAcademico { get; set; }

        [Required]
        [StringLength(1)]
        public string estado { get; set; }

        public virtual Aspirante Aspirante { get; set; }

        public virtual Programa Programa { get; set; }

        public virtual Sede Sede { get; set; }
    }
}
