using IMS.Models;
using IMS.Repositories;
using Sapi.Data;
using Sapi.Data.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Repository.SqlServer
{
    public class BookRepository : Repository<Book>, IBookRepository
    {
        /// <summary>
		/// 构造函数
		/// </summary>
		/// <param name="unitOfWork"></param>
		public BookRepository(IUnitOfWork unitOfWork)
            : base(unitOfWork)
        {

        }
    }
}
