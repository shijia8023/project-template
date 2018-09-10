using Sapi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Models
{
    /// <summary>
    /// 供方分类
    /// </summary>
    public class OwnSupplierClass : IEntity
    {
        /// <summary>
        /// 分类Id
        /// </summary>
        public string ClassId { get; set; }

        /// <summary>
        /// 分类父Id
        /// </summary>
        public string ParentClassId { get; set; }

        /// <summary>
        /// 分类名称
        /// </summary>
        public string ClassName { get; set; }

        /// <summary>
        /// 基础分类Id
        /// </summary>
        public string BaseClassId { get; set; }

        /// <summary>
        /// 是否翻页
        /// </summary>
        public string IsLeaf { get; set; }

        /// <summary>
        /// 等级
        /// </summary>
        public string Level { get; set; }

        /// <summary>
        /// 概述
        /// </summary>
        public string Outline { get; set; }

        /// <summary>
        /// 行号
        /// </summary>
        public string RowIndex { get; set; }

        /// <summary>
        /// 是否删除
        /// </summary>
        public string IsDelete { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }

        /// <summary>
        /// 创建者
        /// </summary>
        public string CreateBy { get; set; }

        /// <summary>
        /// 创建人名称
        /// </summary>
        public string CreateByName { get; set; }

        /// <summary>
        /// 创建日期
        /// </summary>
        public string CreateDate { get; set; }

        /// <summary>
        /// 最后修改者
        /// </summary>
        public string LastEditBy { get; set; }

        /// <summary>
        /// 最后修改的名称
        /// </summary>
        public string LastEditByName { get; set; }

        /// <summary>
        /// 最后修改时间
        /// </summary>
        public string LastEditDate { get; set; }
    }
}
