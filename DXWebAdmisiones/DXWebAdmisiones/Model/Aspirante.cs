namespace DXWebAdmisiones.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Aspirante")]
    public partial class Aspirante
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Aspirante()
        {
            Inscripcion = new HashSet<Inscripcion>();
        }

        [Key]
        public int codigo { get; set; }

        [Required]
        [StringLength(100)]
        public string primerNombre { get; set; }

        [Required]
        [StringLength(100)]
        public string segundoNombre { get; set; }

        [Required]
        [StringLength(100)]
        public string primerApellido { get; set; }

        [Required]
        [StringLength(100)]
        public string segundoApellido { get; set; }

        [Required]
        [StringLength(100)]
        public string telefono { get; set; }

        [Required]
        [StringLength(100)]
        public string correo { get; set; }

        [Column(TypeName = "date")]
        public DateTime fechaNacimiento { get; set; }

        public int codigoPaisNacimiento { get; set; }

        public int codigoDeptoNacimiento { get; set; }

        public int codigoCiudadNacimiento { get; set; }

        [Required]
        [StringLength(10)]
        public string grupoSanguineo { get; set; }

        public int codigoTipoDoc { get; set; }

        [Required]
        [StringLength(100)]
        public string nroDoc { get; set; }

        [Column(TypeName = "date")]
        public DateTime fechaExpDoc { get; set; }

        public int codigoPaisExpDoc { get; set; }

        public int codigoDeptoExpDoc { get; set; }

        public int codigoCiudadExpDoc { get; set; }

        [Required]
        [StringLength(1)]
        public string sexo { get; set; }

        [Required]
        [StringLength(100)]
        public string estadoCivil { get; set; }

        public virtual Ciudad Ciudad { get; set; }

        public virtual Ciudad Ciudad1 { get; set; }

        public virtual Departamento Departamento { get; set; }

        public virtual Departamento Departamento1 { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual Pais Pais1 { get; set; }

        public virtual TipoDocumento TipoDocumento { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Inscripcion> Inscripcion { get; set; }
    }
}
