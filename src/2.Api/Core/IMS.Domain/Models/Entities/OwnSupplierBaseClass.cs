using Sapi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Models
{
    /// <summary>
    /// 供方基础分类
    /// sj 2018-9-7 14：55
    /// </summary>
    public class OwnSupplierBaseClass : IEntity
    {
        /// <summary>
        /// 基础分类Id
        /// </summary>
        public string BaseClassId { get; set; }

        /// <summary>
        /// 分类名称
        /// </summary>
        public string ClassName { get; set; }

        /// <summary>
        /// 行号
        /// </summary>
        public int RowIndex { get; set; }

        /// <summary>
        /// 是否删除
        /// </summary>
        public bool IsDelete { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }

        /// <summary>
        /// 创建者
        /// </summary>
        public string CreateBy { get; set; }

        /// <summary>
        /// 创建者名称
        /// </summary>
        public string CreateByName { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 最后修改者
        /// </summary>
        public string LastEditBy { get; set; }

        /// <summary>
        /// 最后修改名称
        /// </summary>
        public string LastEditByName { get; set; }

        /// <summary>
        /// 最后修改时间
        /// </summary>
        public DateTime LastEditDate { get; set; }
    }
}
