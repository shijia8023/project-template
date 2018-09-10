using Sapi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Models
{

    /// <summary>
    /// 供应商
    ///sj   2018-09-07 14:53
    /// </summary>
    public class OwnSupplier : IEntity
    {
        /// <summary>
        /// 供方Id
        /// </summary>
        public string SupId { get; set; }

        /// <summary>
        /// 供方名称
        /// </summary>
        public string SupName { get; set; }

        /// <summary>
        /// 供方编号
        /// </summary>
        public string SupNo { get; set; }

        /// <summary>
        /// 省Id
        /// </summary>
        public string ProvinceId { get; set; }

        /// <summary>
        /// 省名称
        /// </summary>
        public string ProvinceName { get; set; }

        /// <summary>
        /// 城市Id
        /// </summary>
        public string CityId { get; set; }

        /// <summary>
        /// 城市名称
        /// </summary>
        public string CityName { get; set; }

        /// <summary>
        /// 区域Id
        /// </summary>
        public string AreaId { get; set; }

        /// <summary>
        /// 区域名称
        /// </summary>
        public string AreaName { get; set; }

        /// <summary>
        /// 纳税人类型编号
        /// </summary>
        public int TaxPayerId { get; set; }

        /// <summary>
        /// 企业类型
        /// </summary>
        public int EnterpriseForm { get; set; }

        /// <summary>
        /// 信用代码
        /// </summary>
        public string CreditCode { get; set; }

        /// <summary>
        /// 法人代表
        /// </summary>
        public string LegalRepresentative { get; set; }

        /// <summary>
        /// 注册资本
        /// </summary>
        public string RegisteredCapital { get; set; }

        /// <summary>
        /// 地址
        /// </summary>
        public string Address { get; set; }

        /// <summary>
        /// 邮政编码
        /// </summary>
        public string Postalcode { get; set; }

        /// <summary>
        /// 公司电话
        /// </summary>
        public string OfficePhone { get; set; }

        /// <summary>
        /// 公司传真
        /// </summary>
        public string FaxNumber { get; set; }

        /// <summary>
        /// 电子邮箱
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 公司网页
        /// </summary>
        public string OfficialWebsite { get; set; }

        /// <summary>
        /// 营业执照
        /// </summary>
        public string BusinessLicence { get; set; }

        /// <summary>
        /// 行号
        /// </summary>
        public int RowIndex { get; set; }

        /// <summary>
        /// 是否删除 1是true, 0是false
        /// </summary>
        public bool  IsDelete { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }

        /// <summary>
        /// 创建者Id
        /// </summary>
        public string CreateBy { get; set; }

        /// <summary>
        /// 创建者名称
        /// </summary>
        public string CreateByName { get; set; }

        /// <summary>
        /// 创建日期
        /// </summary>
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 最后编辑者Id
        /// </summary>
        public string LastEditBy { get; set; }

        /// <summary>
        /// 最后编辑者
        /// </summary>
        public string LastEditByName { get; set; }

        /// <summary>
        /// 最后编辑日期
        /// </summary>
        public DateTime LastEditDate { get; set; }

    }
}
