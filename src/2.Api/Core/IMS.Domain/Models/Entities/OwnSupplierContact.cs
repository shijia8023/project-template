using Sapi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Models
{
    /// <summary>
    /// 供应商联系人
    /// </summary>
    public class OwnSupplierContact : IEntity
    {
        /// <summary>
        /// 联系人Id
        /// </summary>
        public string ContactId { get; set; }

        /// <summary>
        /// 供方Id
        /// </summary>
        public string SupId { get; set; }

        /// <summary>
        /// 联系人姓名
        /// </summary>
        public string ContactName { get; set; }

        /// <summary>
        /// 职位
        /// </summary>
        public string PositionName { get; set; }

        /// <summary>
        /// 性别 0：男，1：女
        /// </summary>
        public int Sex { get; set; }
        
        /// <summary>
        /// 电子邮箱
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 座机号码
        /// </summary>
        public string OfficePhone { get; set; }

        /// <summary>
        /// 手机号码
        /// </summary>
        public string MobileTelephone { get; set; }

        /// <summary>
        /// 行号
        /// </summary>
        public string RowIndex { get; set; }
    }
}
