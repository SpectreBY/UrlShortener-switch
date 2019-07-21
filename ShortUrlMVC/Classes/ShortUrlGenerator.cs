using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace ShortUrlMVC.Classes
{
    static class ShortUrlGenerator
    {
        private static string symbols = "ABCDEFGHIGKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        private static string urlPattern = @"(http:\/\/|https:\/\/|www.|\b).{2,}\.\w{2,}(\/|\b)";
        private static string urlParsePattern = @"(http:\/\/|https:\/\/)";

        private const int keyLenght = 6;

        public static string GetShortUrl()
        {
            StringBuilder newUrl = new StringBuilder();
            Random random = new Random();
            int randomIndex;
            randomIndex = 0;

            for (int i = 0; i < keyLenght; i++)
            {
                randomIndex = random.Next(0, symbols.Length);
                newUrl.Append(symbols[randomIndex]);
            }

            return newUrl.ToString();
        }

        public static bool CheckUrl(string longUrl)
        {
            Regex regex = new Regex(urlPattern);
            return regex.IsMatch(longUrl);
        }

        public static string ParseUrl(string url)
        {
            StringBuilder stringBuilder = new StringBuilder();
            Regex regex = new Regex(urlParsePattern);

            if (regex.IsMatch(url))
            {
                return url;
            }
            else
            {
                stringBuilder.AppendFormat("http://{0}/", url);
                return stringBuilder.ToString();
            }
        }
    }
}