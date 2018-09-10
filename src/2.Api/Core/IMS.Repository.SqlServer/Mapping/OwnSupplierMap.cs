using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.ModelConfiguration;
using IMS.Models;


namespace IMS.Repository.SqlServer.Mapping
{
   public class OwnSupplierMap : EntityTypeConfiguration<OwnSupplier>
    {
        public OwnSupplierMap()
        {
            this.ToTable("TSup_OwnSupplier");
            this.HasKey(x => x.SupId).Property(x => x.SupId).HasColumnType("varchar").HasMaxLength(36);
            this.Property(x=>x.SupName).HasMaxLength(100);
            this.Property(x=>x.SupNo).HasMaxLength(100);
            this.Property(x => x.ProvinceId).HasColumnType("varchar").HasMaxLength(36);
            this.Property(x => x.ProvinceName).HasMaxLength(20);
            this.Property(x => x.CityId).HasColumnType("varchar").HasMaxLength(36);
            this.Property(x => x.CityName).HasMaxLength(20);
            this.Property(x => x.AreaId).HasColumnType("varchar").HasMaxLength(36);
            this.Property(x=>x.AreaName).HasMaxLength(200);
            this.Property(x => x.TaxPayerId).IsRequired();
            this.Property(x=>x.EnterpriseForm).IsRequired();
            this.Property(x=>x.CreditCode).HasColumnType("char").HasMaxLength(18);
            this.Property(x => x.LegalRepresentative).HasMaxLength(20);
            this.Property(x => x.Address).HasMaxLength(1000);
            this.Property(x => x.Postalcode).HasColumnType("varchar").HasMaxLength(20);
            this.Property(x => x.OfficePhone).HasColumnType("varchar").HasMaxLength(100);
            this.Property(x => x.FaxNumber).HasColumnType("varchar").HasMaxLength(100);
            this.Property(x => x.Email).HasColumnType("varchar").HasMaxLength(100);
            this.Property(x => x.OfficialWebsite).HasMaxLength(1000);



            this.Property(x => x.IsDelete).IsRequired();
            
        }

    }
}
