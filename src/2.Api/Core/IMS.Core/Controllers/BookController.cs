using IMS.Core.ViewModels;
using IMS.Models;
using IMS.Services;
using Newtonsoft.Json;
using Sapi.Utility;
using Sapi.WebApi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace IMS.Core.Controllers
{
    /// <summary>
    /// 书控制器   sj 2018-09-10 10:45
    /// </summary>
    [RoutePrefix("api/ims/book")]
    public class BookController : DefaultApiController
    {
        private readonly IBookService _bookService;

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="bookService"></param>
        public BookController(IBookService bookService)
        {
            _bookService = bookService;
        }

        /// <summary>
        /// 新增书本信息
        /// </summary>
        /// <param name="bookModel"></param>
        /// <returns></returns>
        [HttpPost, Route("")]
        [ValidateModelFilter]
        [ModuleAuthorize]
        public ResponseResult AddBook(BookCreateViewModel bookModel)
        {
            var result = new ResponseResult(PromptCode.SUCCESS, "新增书本信息成功。");
            //模型转换
            var currentTime = DateTime.Now;
            var book = new Book()
            {
                BookId = Guid.NewGuid().ToString(),
                BookName = bookModel.BookName,
                BookNo = bookModel.BookNo,
                BookNameType = bookModel.BookTypeName,
                Author = bookModel.Author,
                Publishers = bookModel.Publishers,
                PublishDate = bookModel.PublishDate,
                IsDelete = false,
                Enabled = true,
                CreateDate = currentTime,
                lastEditDate = currentTime
            };
            if (!_bookService.AddBook(book))
            {
                result.Code = _bookService.Message.Code;
                result.Message = _bookService.Message.Content;
                return result;
            }
            //记录操作成功日志
            Logger.Information(Request, "新增书本信息成功。", JsonConvert.SerializeObject(bookModel));
            return result;
        }

        /// <summary>
        /// 修改书本信息
        /// </summary>
        /// <param name="bookModel"></param>
        /// <returns></returns>
        [HttpPut, Route("")]
        [ValidateModelFilter]
        [ModuleAuthorize]
        public ResponseResult EnditBook(BookEditViewModel bookModel)
        {
            var result = new ResponseResult(PromptCode.SUCCESS, "修改书本信息成功。");
            var book = new Book()
            {
                BookId = bookModel.BookId,
                BookName = bookModel.BookName,
                BookNo = bookModel.BookNo,
                BookNameType = bookModel.BookTypeName,
                Author = bookModel.Author,
                Publishers = bookModel.Publishers,
                PublishDate = bookModel.PublishDate,
                Enabled = bookModel.Enabled,
                lastEditDate = DateTime.Now
            };

            if (!_bookService.EditBook(book))
            {
                result.Code = _bookService.Message.Code;
                result.Message = _bookService.Message.Content;
                return result;
            }
            //记录操作成功日志
            Logger.Information(Request, "修改书本信息成功。", JsonConvert.SerializeObject(bookModel));
            return result;
        }
    }
}
