using Sapi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Models
{
    /// <summary>
    /// 书
    /// sj  2018-09-10 10：43
    /// </summary>
    public class Book : IEntity
    {
        /// <summary>
        /// 书Id
        /// </summary>
        public string BookId { get; set; }

        /// <summary>
        /// 书编号
        /// </summary>
        public string BookNo { get; set; }

        /// <summary>
        /// 书名
        /// </summary>
        public string BookName { get; set; }

        /// <summary>
        /// 书类型
        /// </summary>
        public string BookNameType { get; set; }

        /// <summary>
        /// 书作者
        /// </summary>
        public string Author { get; set; }

        /// <summary>
        /// 出版社
        /// </summary>
        public string Publishers { get; set; }

        /// <summary>
        /// 出版时间
        /// </summary>
        public DateTime PublishDate { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime lastEditDate { get; set; }

        /// <summary>
        /// 是否删除  
        /// </summary>
        public bool IsDelete { get; set; }

        /// <summary>
        /// 是否有效
        /// </summary>
        public bool Enabled { get; set; }
    }
}
