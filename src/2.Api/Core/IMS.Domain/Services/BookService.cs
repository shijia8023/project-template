using IMS.Models;
using IMS.Repositories;
using IMS.Services;
using Sapi.Data;
using Sapi.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Domain.Services
{
    /// <summary>
    /// 书 
    /// </summary>
    public class BookService : ServiceBase, IBookService
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IBookRepository _bookRepository;


        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="unitOfWork"></param>
        /// <param name="bookRepository"></param>
        public BookService(IUnitOfWork unitOfWork, IBookRepository bookRepository)
        {
            _unitOfWork = unitOfWork;
            _bookRepository = bookRepository;
        }

        /// <summary>
        /// 添加书本
        /// sj 2018-09-10 10:54
        /// </summary>
        /// <param name="book"></param>
        /// <returns></returns>
        public bool AddBook(Book book)
        {
            if (!AddBookEnabled(book))
            {
                return false;
            }
            _bookRepository.Create(book);
            _unitOfWork.Commit();
            return true;
        }

        /// <summary>
        /// 判断书本 是否能新增
        /// </summary>
        /// <returns></returns>
        public bool AddBookEnabled(Book book)
        {
            if (_bookRepository.Table.Any(x => x.Enabled == true && x.IsDelete == false && x.BookName == book.BookName))
            {
                this.Message = new Message(MsgCode.DEMO_BOOK_FOR_ADD_NAME_EXISTS, "新增失败，已存在一个相同的书本名称。");
                return false;
            }
            if (_bookRepository.Table.Any(x => x.Enabled == true && x.IsDelete == false && x.BookNo == book.BookNo))
            {
                this.Message = new Message(MsgCode.DEMO_BOOK_FOR_ADD_NO_EXISTS, "新增失败，已存在一个相同的书本编号。");
                return false;
            }
            return true;
        }

        /// <summary>
        /// 修改书本信息
        /// </summary>
        /// <param name="book"></param>
        /// <returns></returns>
        public bool EditBook(Book book)
        {

        }
    }
}
