using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class DepartamentoController
    {
        private AdmisionesModel db;

        public DepartamentoController()
        {
            db = new AdmisionesModel();
        }

        public List<Departamento> GetAll(int paisId)
        {
            return db.Departamento.Where(p => p.codigoPais == paisId).ToList();
        }
    }
}
