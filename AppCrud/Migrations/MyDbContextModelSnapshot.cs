// <auto-generated />
using System;
using AppCrud.Data;
using Infrastructure;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Infrastructure.Migrations
{
    [DbContext(typeof(MyDbContext))]
    partial class MyDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Domain.Cloth.Clothes", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<int>("OriginId")
                        .HasColumnType("int");

                    b.Property<decimal>("Price")
                        .HasColumnType("decimal(18,2)");

                    b.Property<int>("RentalPrice")
                        .HasColumnType("int");

                    b.Property<int>("RentalTime")
                        .HasColumnType("int");

                    b.Property<int>("Size")
                        .HasColumnType("int");

                    b.Property<int>("Status")
                        .HasColumnType("int");

                    b.Property<int>("TypeClothesId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("TypeClothesId");

                    b.ToTable("Clothes");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Description = "Màu trắng",
                            Name = "Váy công sở Zara",
                            Price = 89.99m,
                            RentalPrice = 200000,
                            RentalTime = 0,
                            Size = 2,
                            Status = 0,
                            TypeClothesId = 1
                        },
                        new
                        {
                            Id = 2,
                            Description = "Màu đen",
                            Name = "Áo công sở Uniqlo",
                            Price = 58.99m,
                            RentalPrice = 100000,
                            RentalTime = 0,
                            Size = 1,
                            Status = 0,
                            TypeClothesId = 2
                        });
                });


            modelBuilder.Entity("Domain.Cloth.TypeClothes", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<int>("Limit")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.ToTable("TypeClothes");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Limit = 15,
                            Name = "Váy"
                        },
                        new
                        {
                            Id = 2,
                            Limit = 20,
                            Name = "Áo"
                        });
                });

           

            modelBuilder.Entity("Domain.Cloth.Clothes", b =>
                {
                    b.HasOne("Domain.Cloth.TypeClothes", "TypeClothes")
                        .WithMany("Clothes")
                        .HasForeignKey("TypeClothesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("TypeClothes");
                });

           
            modelBuilder.Entity("Domain.Cloth.TypeClothes", b =>
                {
                    b.Navigation("Clothes");
                });

#pragma warning restore 612, 618
        }
    }
}
