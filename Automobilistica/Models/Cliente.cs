﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Automobilistica.Models
{
    public partial class Cliente
    {
        public Cliente()
        {
            CarroCliente = new HashSet<CarroCliente>();
            Proposta = new HashSet<Proposta>();
        }

        [Key]
        [Column("CLCDCLIENTE")]
        public int Clcdcliente { get; set; }
        [Column("CLCDPESSOA")]
        public int Clcdpessoa { get; set; }
        [Column("CLDTCADASTRO", TypeName = "smalldatetime")]
        public DateTime Cldtcadastro { get; set; }
        [Column("CLDTALTERACAO", TypeName = "smalldatetime")]
        public DateTime? Cldtalteracao { get; set; }
        [Column("CLSTATUS")]
        public bool? Clstatus { get; set; }

        [ForeignKey("Clcdpessoa")]
        [InverseProperty("Cliente")]
        public virtual Pessoas ClcdpessoaNavigation { get; set; }
        [InverseProperty("CccdclienteNavigation")]
        public virtual ICollection<CarroCliente> CarroCliente { get; set; }
        [InverseProperty("PpcdclienteNavigation")]
        public virtual ICollection<Proposta> Proposta { get; set; }
    }
}