using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class PaisController
    {
        private AdmisionesModel db;

        public PaisController()
        {
            db = new AdmisionesModel();
        }

        public List<Pais> GetAll()
        {
            return db.Pais.Where(p => p.estado == "A").ToList();
        }
    }
}
