using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MySql.Data.MySqlClient;
using WebApp_Recreation.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;

namespace WebApp_Recreation.Controllers
{
    public class RoomInfoController : Controller
    {
        private readonly ILogger _logger;

        public RoomInfoController(ILogger<RoomInfoController> logger)
        {
            _logger = logger;
        }

        public IActionResult Show()
        {
            List<RoomInfo> RoomInfos = new List<RoomInfo>();

            //connect to mysql
            using (MySqlConnection con=new MySqlConnection("server=localhost;user=root;database=room_details;port=3306;password=Muthu@1997"))
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "usp_showRoomInfo";


                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    // Extract data
                    RoomInfo roomInfo = new RoomInfo();
                    roomInfo.ROOM_ID = Convert.ToInt32(reader["ROOM_ID"]);
                    roomInfo.ROOM_ADMIN = reader["ROOM_ADMIN"].ToString();
                    roomInfo.ROOM_LOCATION = reader["ROOM_LOCATION"].ToString();
                    roomInfo.ROOM_FACILITY = reader["ROOM_FACILITY"].ToString();
                    roomInfo.ROOM_MAXCOUNT = reader["ROOM_MAXCOUNT"].ToString();

                    RoomInfos.Add(roomInfo);
                }

                reader.Close();
            }
            return View(RoomInfos);
        }
    }
}
