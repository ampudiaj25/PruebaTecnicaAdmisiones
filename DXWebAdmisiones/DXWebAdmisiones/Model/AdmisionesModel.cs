using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DXWebAdmisiones.Model
{
    public partial class AdmisionesModel : DbContext
    {
        public AdmisionesModel()
            : base("name=AdmisionesModel")
        {
        }

        public virtual DbSet<Aspirante> Aspirante { get; set; }
        public virtual DbSet<Ciudad> Ciudad { get; set; }
        public virtual DbSet<Departamento> Departamento { get; set; }
        public virtual DbSet<Inscripcion> Inscripcion { get; set; }
        public virtual DbSet<Pais> Pais { get; set; }
        public virtual DbSet<Programa> Programa { get; set; }
        public virtual DbSet<Sede> Sede { get; set; }
        public virtual DbSet<TipoDocumento> TipoDocumento { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Aspirante>()
                .Property(e => e.primerNombre)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.segundoNombre)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.primerApellido)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.segundoApellido)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.grupoSanguineo)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.nroDoc)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.sexo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .Property(e => e.estadoCivil)
                .IsUnicode(false);

            modelBuilder.Entity<Aspirante>()
                .HasMany(e => e.Inscripcion)
                .WithRequired(e => e.Aspirante)
                .HasForeignKey(e => e.codigoAspirante)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Ciudad>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Ciudad>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Ciudad>()
                .HasMany(e => e.Aspirante)
                .WithRequired(e => e.Ciudad)
                .HasForeignKey(e => e.codigoCiudadNacimiento)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Ciudad>()
                .HasMany(e => e.Aspirante1)
                .WithRequired(e => e.Ciudad1)
                .HasForeignKey(e => e.codigoCiudadExpDoc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Departamento>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Departamento>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Departamento>()
                .HasMany(e => e.Aspirante)
                .WithRequired(e => e.Departamento)
                .HasForeignKey(e => e.codigoDeptoNacimiento)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Departamento>()
                .HasMany(e => e.Aspirante1)
                .WithRequired(e => e.Departamento1)
                .HasForeignKey(e => e.codigoDeptoExpDoc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Departamento>()
                .HasMany(e => e.Ciudad)
                .WithRequired(e => e.Departamento)
                .HasForeignKey(e => e.codigoDepartamento)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Inscripcion>()
                .Property(e => e.modalidad)
                .IsUnicode(false);

            modelBuilder.Entity<Inscripcion>()
                .Property(e => e.tipoAspirante)
                .IsUnicode(false);

            modelBuilder.Entity<Inscripcion>()
                .Property(e => e.periodoAcademico)
                .IsUnicode(false);

            modelBuilder.Entity<Inscripcion>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Pais>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Pais>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Pais>()
                .HasMany(e => e.Aspirante)
                .WithRequired(e => e.Pais)
                .HasForeignKey(e => e.codigoPaisNacimiento)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Pais>()
                .HasMany(e => e.Aspirante1)
                .WithRequired(e => e.Pais1)
                .HasForeignKey(e => e.codigoPaisExpDoc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Pais>()
                .HasMany(e => e.Departamento)
                .WithRequired(e => e.Pais)
                .HasForeignKey(e => e.codigoPais)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Programa>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Programa>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Programa>()
                .HasMany(e => e.Inscripcion)
                .WithRequired(e => e.Programa)
                .HasForeignKey(e => e.codigoPrograma)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Sede>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Sede>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Sede>()
                .HasMany(e => e.Inscripcion)
                .WithRequired(e => e.Sede)
                .HasForeignKey(e => e.codigoSede)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoDocumento>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<TipoDocumento>()
                .Property(e => e.estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoDocumento>()
                .HasMany(e => e.Aspirante)
                .WithRequired(e => e.TipoDocumento)
                .HasForeignKey(e => e.codigoTipoDoc)
                .WillCascadeOnDelete(false);
        }
    }
}
