using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class CiudadController
    {
        private AdmisionesModel db;

        public CiudadController()
        {
            db = new AdmisionesModel();
        }

        public List<Ciudad> GetAll(int deptoId)
        {
            return db.Ciudad.Where(p => p.codigoDepartamento == deptoId).ToList();
        }
    }
}
