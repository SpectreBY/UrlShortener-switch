using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using ShortUrlMVC.Models;
using ShortUrlMVC.Classes;
using System.Data.Entity;

namespace ShortUrlMVC.Controllers
{
    public class HomeController : Controller
    {
        UrlContext urlContext = new UrlContext();

        public ActionResult CreateShort()
        {
            return View();
        }

        [HttpGet]
        public ActionResult UrlTable()
        {
            return View(urlContext.ListOfUrls.ToList());
        }

        [HttpPost]
        public ActionResult UrlTable(ListOfUrls listOfUrls)
        {
            urlContext.Entry(listOfUrls).State = EntityState.Modified;
            urlContext.SaveChanges();
            return View(urlContext.ListOfUrls.ToList());
        }

        [HttpPost]
        public ActionResult Delete(int id)
        {
            ListOfUrls listOfUrls = urlContext.ListOfUrls.Select(obj => obj).Where(objId => objId.Id == id).FirstOrDefault();
            return View(listOfUrls);
        }

        [HttpPost]
        public ActionResult DeleteConfirm(int id)
        {
            ListOfUrls listOfUrls = urlContext.ListOfUrls.Find(id);
            if (listOfUrls != null)
            {
                urlContext.ListOfUrls.Remove(listOfUrls);
                urlContext.SaveChanges();
            }
            return RedirectToAction("UrlTable");
        }

        [HttpPost]
        public ActionResult Update(int id)
        {
            ListOfUrls listOfUrls = urlContext.ListOfUrls.Select(obj => obj).Where(objId => objId.Id == id).FirstOrDefault();
            return View(listOfUrls);
        }

        public ActionResult Error()
        {
            return View();
        }


        public void RedirectLink()
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            string shortUrl;
            string longUrl;
            try
            {
                shortUrl = Request["aspxerrorpath"].Replace("/", "");
                longUrl = urlContext.ListOfUrls.Where(obj => obj.ShortUrl.Equals(shortUrl)).FirstOrDefault().LongUrl;
                urlContext.ListOfUrls.Where(obj => obj.ShortUrl.Equals(shortUrl)).FirstOrDefault().NumberOfTransitions++;
                urlContext.SaveChanges();
                Response.RedirectPermanent(longUrl, true);
            }
            catch
            {
                RedirectToAction("Error");
            }

        }

        [HttpPost]
        public string UrlProcessing(string urlAdress)
        {
            ListOfUrls urlObj;
            string outputUrl;
            string shortUrl;
            bool checkUrl;
            checkUrl = ShortUrlGenerator.CheckUrl(urlAdress);

            if (checkUrl)
            {
                try
                {
                    urlAdress = ShortUrlGenerator.ParseUrl(urlAdress);
                    urlObj = urlContext.ListOfUrls.Single(url => url.LongUrl.Equals(urlAdress));
                    outputUrl = string.Format("Ваша новая ссылка:</br><a href='http://{0}/{1}/'>http://{2}/{3}/</a>", HttpContext.Request.Url.Authority, urlObj.ShortUrl, HttpContext.Request.Url.Authority, urlObj.ShortUrl);
                    return outputUrl;
                }
                catch
                {
                    shortUrl = ShortUrlGenerator.GetShortUrl();
                    urlObj = urlContext.ListOfUrls.Where(url => url.ShortUrl.Equals(shortUrl)).Select(obj => obj).FirstOrDefault();
                    urlObj = new ListOfUrls();
                    urlObj.LongUrl = urlAdress;
                    urlObj.ShortUrl = shortUrl;
                    urlObj.DateOfAdd = DateTime.Now;
                    urlObj.NumberOfTransitions = 0;
                    urlContext.ListOfUrls.Add(urlObj);
                    urlContext.SaveChanges();
                    outputUrl = string.Format("Ваша новая ссылка:</br><a href='http://{0}/{1}/'>http://{2}/{3}/</a>", HttpContext.Request.Url.Authority, urlObj.ShortUrl, HttpContext.Request.Url.Authority, urlObj.ShortUrl);
                    return outputUrl;
                }
            }
            else
            {
                return "Некорректная ссылка !";
            }
        }
    }
}