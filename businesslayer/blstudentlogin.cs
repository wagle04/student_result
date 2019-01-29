using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using dataaccess;

namespace businesslayer
{
    public class blstudentlogin
    {
        public DataTable loginuser(dlstudentlogin da)
        {
            DataTable dt = new DataTable();
            dt = da.loginuser(da);
            return dt;
        }
    }

}
