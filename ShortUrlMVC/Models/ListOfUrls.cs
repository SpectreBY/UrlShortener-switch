using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ShortUrlMVC.Models
{
    public class ListOfUrls
    {
        [Key]
        [Display(Name = "Код")]
        public int Id { get; set; }

        [Display(Name = "Длинная ссылка")]
        public string LongUrl { get; set; }

        [Display(Name = "Короткая ссылка")]
        public string ShortUrl { get; set; }

        [Display(Name = "Дата добавления")]
        public DateTime DateOfAdd { get; set; }

        [Display(Name = "Кол-во переходов")]
        public int NumberOfTransitions { get; set; }
    }
}