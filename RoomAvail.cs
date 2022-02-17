using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
namespace WebApp_Recreation.Models
{
    public class RoomAvail
    {
        public int RSI_NO
        {
            get;
            set;
        }
        public int ROOM_ID
        {
            get;
            set;
        }
        public int ROOM_CURRENTCOUNT
        {
            get;
            set;
        }
        public int ROOM_ALLOWEDCOUNT
        {
            get;
            set;
        }
        public string ROOM_STATUS
        {
            get;
            set;
        }
        public string ROOM_CUR_EXISTINGGENDER
        {
            get;
            set;
        }
        public string ROOM_CUR_ALLOWEDGENDER
        {
            get;
            set;
        }
        public DateTime ROOM_TIMELOG
        {
            get;
            set;
        }
    }
}
