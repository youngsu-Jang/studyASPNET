using BoardWebApp.Data;
using BoardWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace BoardWebApp.Controllers
{
    public class NoteController : Controller
    {
        private readonly ApplicationDbContext _context;

        public NoteController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            IEnumerable<Note> list = _context.Notes.ToList(); // DB에서 데이터 가져와서..
            return View(list);
        }

        public IActionResult Create()
        {
            return View();

        }
        /// <summary>
        /// POST 액션(메서드)
        /// </summary>
        /// <param name="note">프론트엔드에서 작성한 모델</param>
        /// <returns>리스트로 다시 돌아감</returns>
        [HttpPost]
        public IActionResult Create(Note note)
        {
            _context.Notes.Add(note); // INSERT 쿼리 실행
            _context.SaveChanges(); // 트랜잭션 Commit

            return RedirectToAction("Index", "Note");
        }
    }
}
