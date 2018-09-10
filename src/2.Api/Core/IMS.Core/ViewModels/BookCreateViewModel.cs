using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Core.ViewModels
{

    /// <summary>
    /// 书本新增视图模型
    /// </summary>
    public class BookCreateViewModel
    {
        /// <summary>
        /// 构造函数
        /// </summary>
        public BookCreateViewModel() { }

        /// <summary>
		/// <B style="color:red;">书本名称</B>
		/// </summary>
		[Required(ErrorMessage = "书本名称不能为空。")]
        [StringLength(100, ErrorMessage = "书本名称最大长度不能超过100。")]
        public string BookName { get; set; }

        /// <summary>
        /// <B style="color:red;">书本编号</B>
        /// </summary>
        [Required(ErrorMessage = "书本编号不能为空。")]
        [StringLength(100, ErrorMessage = "书本编号最大长度不能超过100。")]
        public string BookNo { get; set; }

        /// <summary>
        /// 书本类型
        /// </summary>
        [StringLength(100, ErrorMessage = "类型最大长度不能超过100。")]
        public string BookTypeName { get; set; }

        /// <summary>
        /// 书本类型
        /// </summary>
        [StringLength(100, ErrorMessage = "作者最大长度不能超过20。")]
        public string Author { get; set; }

        /// <summary>
        /// <B style="color:red;">出版社</B>
        /// </summary>
        [Required(ErrorMessage = "出版社不能为空。")]
        [StringLength(100, ErrorMessage = "出版社最大长度不能超过20。")]
        public string Publishers { get; set; }

        /// <summary>
        /// <B style="color:red;">出版时间</B>
        /// </summary>
        [Required(ErrorMessage = "出版时间不能为空。")]
        public DateTime PublishDate { get; set; }


    }
}
