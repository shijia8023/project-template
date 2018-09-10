using IMS.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IMS.Repository.SqlServer.Mapping
{
    public class BookMap : EntityTypeConfiguration<Book>
    {
        /// <summary>
		/// 
		/// </summary>
		public BookMap()
        {
            this.ToTable("T_Book");
            this.HasKey(x => x.BookId).Property(x => x.BookId).HasColumnType("varchar").HasMaxLength(36);
            this.Property(x => x.BookName).HasMaxLength(100);
            this.Property(x => x.BookNo).HasMaxLength(100).IsRequired();
            this.Property(x => x.BookNameType).HasMaxLength(100);
            this.Property(x => x.Author).HasMaxLength(100);
            this.Property(x => x.Publishers).HasMaxLength(200);
            this.Property(x => x.PublishDate).IsRequired();
            this.Property(x => x.IsDelete).IsRequired();
            this.Property(x => x.Enabled).IsRequired();
            this.Property(x => x.CreateDate).IsRequired();
            this.Property(x => x.lastEditDate).IsRequired();
        }
    }
}
