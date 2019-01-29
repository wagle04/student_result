using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dataaccess;
using System.Data;

namespace businesslayer
{
   public class blteacherlogin
    {
        
        public DataTable loginuser(dlteacherlogin da)
        {
            DataTable dt = new DataTable();
            dt = da.loginuser(da);
            return dt;
        }
    }
}
