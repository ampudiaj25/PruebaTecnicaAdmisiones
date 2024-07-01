using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class AspiranteController
    {
        private AdmisionesModel db;

        public AspiranteController()
        {
            db = new AdmisionesModel();
        }

        public Aspirante Add(Aspirante aspirante)
        {
            Aspirante addedAspirante = db.Aspirante.Add(aspirante);

            // Guarda los cambios en la base de datos
            db.SaveChanges();

            // Retorna el aspirante añadido
            return addedAspirante;
        }

        public List<Aspirante> GetAll()
        {
            return db.Aspirante.ToList();
        }
    }
}
