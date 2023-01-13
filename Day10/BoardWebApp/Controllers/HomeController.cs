using BoardWebApp.Data;
using BoardWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

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
            
            // Top위치에 넣을 데이터 로드
            var query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Top' 
                        ORDER BY Id DESC";
			ProfileModel top = _context.Profiles.FromSqlRaw(query).FirstOrDefault();
            if ( top == null)
            {
                top = new ProfileModel // DB에 데이터가 없을때 가짜 데이터
                {
                    Title = "공사중입니다",
                    Division = "Top", // 이거 안넣으면 또 오류 !!
                    Description = string.Empty,
                    Url = string.Empty,
                    FileName = "http://placeimg.com/900/400/any"
                };
            }
            // Card1 영역 DB에서 로드
            query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Card1' 
                        ORDER BY Id DESC";
            ProfileModel card1 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if ( card1 == null )
            {
                card1 = new ProfileModel
                {
                    Title = "Card1 영역",
                    Division = "Card1", // 이것도 안넣으면 오류 !!
                    Description = "Card1 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            // Card2 영역 DB에서 로드
            query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Card2' 
                        ORDER BY Id DESC";
            ProfileModel card2 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if (card2 == null)
            {
                card2 = new ProfileModel
                {
                    Title = "Card2 영역",
                    Division = "Card2", // 이것도 안넣으면 오류 !!
                    Description = "Card2 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            // Card3 영역 DB에서 로드
            query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Card3' 
                        ORDER BY Id DESC";
            ProfileModel card3 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if (card3 == null)
            {
                card3 = new ProfileModel
                {
                    Title = "Card3 영역",
                    Division = "Card3", // 이것도 안넣으면 오류 !!
                    Description = "Card3 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            List<ProfileModel> list = new List<ProfileModel> { top, card1, card2, card3 };
            return View(list);
        }

        [HttpGet]
        public IActionResult About()
        {
            var query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Card1' 
                        ORDER BY Id DESC";
            ProfileModel card1 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if (card1 == null)
            {
                card1 = new ProfileModel
                {
                    Title = "Card1 영역",
                    Division = "Card1", // 이것도 안넣으면 오류 !!
                    Description = "Card1 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            // Card2 영역 DB에서 로드
            query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Card2' 
                        ORDER BY Id DESC";
            ProfileModel card2 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if (card2 == null)
            {
                card2 = new ProfileModel
                {
                    Title = "Card2 영역",
                    Division = "Card2", // 이것도 안넣으면 오류 !!
                    Description = "Card2 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            // Card3 영역 DB에서 로드
            query = @"SELECT TOP 1 * 
                        FROM Profiles  
                        WHERE Division = 'Card3' 
                        ORDER BY Id DESC";
            ProfileModel card3 = _context.Profiles.FromSqlRaw(query).FirstOrDefault();

            if (card3 == null)
            {
                card3 = new ProfileModel
                {
                    Title = "Card3 영역",
                    Division = "Card3", // 이것도 안넣으면 오류 !!
                    Description = "Card3 영역입니다.",
                    Url = string.Empty,
                    FileName = string.Empty
                };

            }

            List<ProfileModel> list = new List<ProfileModel> { card1, card2, card3 };
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