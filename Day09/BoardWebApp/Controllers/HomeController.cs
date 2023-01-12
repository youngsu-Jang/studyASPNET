using BoardWebApp.Data;
using BoardWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace BoardWebApp.Controllers
{
    public class HomeController : Controller
    {
        //private readonly ILogger<HomeController> _logger;
        // 이게있어야 DB연결
        private readonly ApplicationDbContext _context;

		public HomeController(ApplicationDbContext context)
		{
			_context = context;
		}


		public IActionResult Index()
        {
            // DB에서 데이터 로드
            var query = @"SELECT TOP 1 * 
                        FROM Profiles  +
                        WHERE Division = 'Top' +
                        ORDER BY Id DESC";
			Profile top = _context.Profiles.FromSqlRaw(query).FirstOrDefault();
            if ( top == null)
            {
                top = new Profile // DB에 데이터가 없을때 가짜 데이터
                {
                    Title = "공사중입니다",
                    Description = string.Empty,
                    Url = string.Empty,
                    FileName = string.Empty
                };
            }

            query = @"SELECT TOP 1 * 
                        FROM Profiles  +
                        WHERE Division = 'Top' +
                        ORDER BY Id DESC";
            Profile card1 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if ( card1 == null )
            {
                card1 = new Profile
                {
                    Title = "Card1 영역",
                    Description = "Card1 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            List<Profile> list = new List<Profile>();
            list.Add(top);
            list.Add(card1);

            return View(list);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}