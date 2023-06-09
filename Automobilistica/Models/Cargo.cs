﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Automobilistica.Models
{
    public partial class Cargo
    {
        public Cargo()
        {
            Funcionarios = new HashSet<Funcionarios>();
        }

        [Key]
        [Column("CGCDCARGO")]
        public int Cgcdcargo { get; set; }
        [Required]
        [Column("CGNOME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Cgnome { get; set; }
        [Required]
        [Column("CGDESCRICAO")]
        [StringLength(255)]
        [Unicode(false)]
        public string Cgdescricao { get; set; }
        [Column("CGMDSALARIAL")]
        public double Cgmdsalarial { get; set; }

        [InverseProperty("FncdcargoNavigation")]
        public virtual ICollection<Funcionarios> Funcionarios { get; set; }
    }
}