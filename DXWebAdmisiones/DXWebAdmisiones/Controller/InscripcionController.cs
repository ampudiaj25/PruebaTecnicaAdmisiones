using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class InscripcionController
    {
        private AdmisionesModel db;

        public InscripcionController()
        {
            db = new AdmisionesModel();
        }

        public void Add(Inscripcion inscripcion)
        {
            db.Inscripcion.Add(inscripcion);

            // Guarda los cambios en la base de datos
            db.SaveChanges();
        }

        public List<Inscripcion> GetAll()
        {
            return db.Inscripcion.ToList();
        }
    }
}
