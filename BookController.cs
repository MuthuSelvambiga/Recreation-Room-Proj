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
    public class BookController : Controller
    {
        private readonly ILogger _logger;

        public BookController(ILogger<BookController> logger)
        {
            _logger = logger;
        }
        public IActionResult BookRoom(BookRoom info)
        {
            //connect to mysql
            using (MySqlConnection con = new MySqlConnection("server=localhost;user=root;database=room_details;port=3306;password=Muthu@1997"))
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "usp_insertNewBookingByGender";
                cmd.Parameters.AddWithValue("@IN_FULL_NAME",info.FULL_NAME);
                cmd.Parameters.AddWithValue("@IN_GENDER", info.GENDER);
                cmd.Parameters.AddWithValue("@IN_BOOKING_SLOT",info.BOOKING_SLOT);
                cmd.Parameters.AddWithValue("@IN_ROOM_ID", info.ROOM_ID);
                cmd.Parameters.AddWithValue("@IN_CHECK_IN_TIME", info.CHECK_IN_TIME);
                cmd.Parameters.AddWithValue("@IN_CHECK_OUT_TIME", info.CHECK_OUT_TIME);
                cmd.Parameters.AddWithValue("@IN_ADD_MEMBERS", info.ADD_MEMBERS);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            return View("BookRoom");
        }
    }
}