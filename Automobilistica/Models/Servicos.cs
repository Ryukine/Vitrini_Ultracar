﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Automobilistica.Models
{
    public partial class Servicos
    {
        public Servicos()
        {
            PropostaServico = new HashSet<PropostaServico>();
        }

        [Key]
        [Column("SRCDSERVICO")]
        public int Srcdservico { get; set; }
        [Required]
        [Column("SRNOME")]
        [StringLength(255)]
        [Unicode(false)]
        public string Srnome { get; set; }
        [Required]
        [Column("SRDESCRICAO")]
        [StringLength(255)]
        [Unicode(false)]
        public string Srdescricao { get; set; }
        [Column("SRVALOR")]
        public double Srvalor { get; set; }
        [Column("SRSTATUS")]
        public bool? Srstatus { get; set; }
        [Column("SRDTCADASTRO", TypeName = "smalldatetime")]
        public DateTime Srdtcadastro { get; set; }

        [InverseProperty("PrcdservicoNavigation")]
        public virtual ICollection<PropostaServico> PropostaServico { get; set; }
    }
}