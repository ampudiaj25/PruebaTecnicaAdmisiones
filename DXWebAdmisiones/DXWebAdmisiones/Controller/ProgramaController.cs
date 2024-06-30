using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class ProgramaController
    {
        private AdmisionesModel db;

        public ProgramaController()
        {
            db = new AdmisionesModel();
        }

        public List<Programa> GetAll()
        {
            return db.Programa.Where(p => p.estado == "A").ToList();
        }
    }
}
