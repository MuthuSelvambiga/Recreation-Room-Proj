using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
namespace WebApp_Recreation.Models
{
    public class BookRoom
    {
        public int BOOKING_ID
        {
            get;
            set;
        }
        public string FULL_NAME
        {
            get;
            set;
        }
        public string GENDER
        {
            get;
            set;
        }
        public string BOOKING_SLOT
        {
            get;
            set;
        }
        public int ROOM_ID
        {
            get;
            set;
        }
        public string CHECK_IN_TIME
        { 
            get;
            set;
        }
        public string CHECK_OUT_TIME
        {
            get;
            set;
        }
        public int ADD_MEMBERS
        {
            get;
            set;
        }
    }
}
