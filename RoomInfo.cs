using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
namespace WebApp_Recreation.Models
{
    public class RoomInfo
    {
   [Key]
        public int ROOM_ID
        {
            get;
            set;
        }
        public string ROOM_ADMIN
        {
            get;
            set;
        }
        public string ROOM_LOCATION
        {
            get;
            set;
        }
        public string ROOM_FACILITY
        {
            get;
            set;
        }
        public string ROOM_MAXCOUNT
        {
            get;
            set;
        }
    }
}

