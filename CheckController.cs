using Microsoft.AspNetCore.Mvc;
using System.Data;
using Microsoft.Extensions.Logging;
using MySql.Data.MySqlClient;
using WebApp_Recreation.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;


namespace WebApp_Recreation.Controllers
{
    public class CheckController : Controller
    {
        private readonly ILogger _logger;

        public CheckController(ILogger<CheckController> logger)
        {
            _logger = logger;
        }
        public IActionResult CheckMaxSize(int ROOM_ID, int ROOM_CUR_COUNT)
        {
            List<RoomAvail> rmchk = new List<RoomAvail>();

            //connect to mysql
            using (MySqlConnection con = new MySqlConnection("server=localhost;user=root;database=room_details;port=3306;password=Muthu@1997"))
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "usp_checkmaxsize";
                cmd.Parameters.AddWithValue("@IN_ROOM_ID", ROOM_ID);
                cmd.Parameters.AddWithValue("@IN_ROOM_CUR_COUNT", ROOM_CUR_COUNT);

                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    // Extract data
                    RoomAvail roomavail = new RoomAvail();
                    roomavail.ROOM_ID = Convert.ToInt32(reader["ROOM_ID"]);
                    roomavail.ROOM_CURRENTCOUNT = Convert.ToInt32(reader["ROOM_CURRENTCOUNT"]);
                    roomavail.ROOM_ALLOWEDCOUNT = Convert.ToInt32(reader["ROOM_ALLOWEDCOUNT"]);
                    roomavail.ROOM_STATUS = reader["ROOM_STATUS"].ToString();
                    roomavail.ROOM_CUR_EXISTINGGENDER = reader["ROOM_CUR_EXISTINGGENDER"].ToString();
                    roomavail.ROOM_CUR_ALLOWEDGENDER = reader["ROOM_CUR_ALLOWEDGENDER"].ToString();

                    rmchk.Add(roomavail);
                }

                reader.Close();

            }
            return View(rmchk);
        }
    }
    
}
