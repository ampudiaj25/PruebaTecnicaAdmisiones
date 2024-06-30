using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class SedeController
    {
        private AdmisionesModel db;

        public SedeController()
        {
            db = new AdmisionesModel();
        }

        public List<Sede> GetAll()
        {
            return db.Sede.Where(p => p.estado == "A").ToList();
        }
    }
}
