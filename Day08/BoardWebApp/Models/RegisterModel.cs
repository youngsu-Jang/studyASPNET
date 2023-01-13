﻿using System.ComponentModel.DataAnnotations;

namespace BoardWebApp.Models
{
	public class RegisterModel
	{
		[Required(AllowEmptyStrings = false, ErrorMessage = "아이디를 입력하세요.")]
		[Display(Name = "아이디")]

		public string Id { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "이름을 입력하세요.")]
        [Display(Name = "이름" )]
		public string UserName { get;}

		[Required(AllowEmptyStrings = false, ErrorMessage = "이메일을 입력하세요.")]
        [Display(Name = "이메일")]
		[EmailAddress]
		public string Email { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "패스워드를 입력하세요.")]
        [Display(Name = "패스워드")]
		[DataType(DataType.Password)]
		public string Password { get; set; }

		[Required(AllowEmptyStrings = false, ErrorMessage = "패스워드 확인을 입력하세요.")]
        [DataType(DataType.Password)]
		[Display(Name = "패스워드 확인")]
		[Compare("Password", ErrorMessage = "패스워드가 일치하지 않습니다.")]
		public string ConfirmPassword { get; set; }

		[Display(Name = "핸드폰 번호")]
		public string PhoneNumber { get; set; }
	}
}
