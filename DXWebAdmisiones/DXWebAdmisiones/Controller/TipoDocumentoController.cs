using System;
using System.Collections.Generic;
using System.Linq;
using DXWebAdmisiones.Model;

namespace MiProyecto.Controllers
{
    public class TipoDocumentoController
    {
        private AdmisionesModel db;

        public TipoDocumentoController()
        {
            db = new AdmisionesModel();
        }

        public List<TipoDocumento> GetAll()
        {
            return db.TipoDocumento.Where(p => p.estado == "A").ToList();
        }
    }
}
