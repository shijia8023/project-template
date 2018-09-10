using IMS.Models;
using Sapi.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Services
{

    /// <summary>
    /// 书 服务示例
    /// </summary>
   public  interface IBookService : IBusinessService
    {
        /// <summary>
        /// 新增书本信息
        /// </summary>
        /// <param name="book"></param>
        /// <returns></returns>
        bool AddBook(Book book);

       /// <summary>
       /// 修改书本信息
       /// </summary>
       /// <param name="book"></param>
       /// <returns></returns>
        bool EditBook(Book book);

        /// <summary>
        /// 移除书本信息 
        /// </summary>
        /// <param name="book"></param>
        /// <returns></returns>
        bool RemoverBook(Book book);
    }
}
