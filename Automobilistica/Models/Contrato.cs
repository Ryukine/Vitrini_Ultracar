﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Automobilistica.Models
{
    public partial class Contrato
    {
        [Key]
        [Column("CTCDCONTRATO")]
        public int Ctcdcontrato { get; set; }
        [Column("CTCDPROPOSTA")]
        public int Ctcdproposta { get; set; }
        [Column("CTDTCADASTRO", TypeName = "smalldatetime")]
        public DateTime Ctdtcadastro { get; set; }
        [Column("CTDTINI", TypeName = "smalldatetime")]
        public DateTime? Ctdtini { get; set; }
        [Column("CTDTFINAL", TypeName = "smalldatetime")]
        public DateTime? Ctdtfinal { get; set; }
        [Column("CTTOTALHORAS")]
        public int? Cttotalhoras { get; set; }
        [Column("CTCDPROCESSO")]
        public int Ctcdprocesso { get; set; }

        [ForeignKey("Ctcdprocesso")]
        [InverseProperty("Contrato")]
        public virtual Processos CtcdprocessoNavigation { get; set; }
        [ForeignKey("Ctcdproposta")]
        [InverseProperty("Contrato")]
        public virtual Proposta CtcdpropostaNavigation { get; set; }
    }
}