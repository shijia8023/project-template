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
            var getBook = _bookRepository.Get(book.BookId);
            if (!EditBookEnabled(getBook))
            {
                return false;
            }

            //修改的内容字段
            getBook.BookName = book.BookName;
            getBook.BookNameType = book.BookNameType;
            getBook.BookNo = book.BookNo;
            getBook.Author = book.Author;
            getBook.Enabled = book.Enabled;
            getBook.PublishDate = book.PublishDate;
            getBook.Publishers = book.Publishers;

            //更新信息
            _bookRepository.Update(getBook);
            _unitOfWork.Commit();
            return true;
        }

        /// <summary>
		/// 判断书本信息是否可以修改
		/// 作者：sj
		/// 日期：2018-09-10
		/// </summary>
		/// <param name="book">书本</param>
		/// <returns></returns>
		private bool EditBookEnabled(Book book)
        {
            if (book == null)
            {
                this.Message = new Message(MsgCode.DEMO_BOOK_FOR_EDIT_NOT_FOUND, "修改失败，找不到可修改的书本。");
                return false;
            }
            if (_bookRepository.Table.Any(x => x.IsDelete == false  && x.BookName == book.BookName && x.BookId != book.BookId))
            {
                this.Message = new Message(MsgCode.DEMO_BOOK_FOR_EDIT_NAME_EXISTS, "修改失败，已存在一个相同的书名称。");
                return false;
            }
            if (_bookRepository.Table.Any(x => x.IsDelete == false && x.BookNo == book.BookNo && x.BookId != book.BookId))
            {
                this.Message = new Message(MsgCode.DEMO_BOOK_FOR_EDIT_NO_EXISTS, "修改失败，已存在一个相同的书本编号。");
                return false;
            }
            return true;
        }

        /// <summary>
        /// 移除书本信息
        /// </summary>
        /// <param name="book"></param>
        /// <returns></returns>
        public bool RemoverBook(Book book) { }

    }
}
