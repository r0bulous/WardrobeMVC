using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace WardrobeMVC
{
    [MetadataType(typeof(Pantmetadata))]
    public partial class Pant

    {
    }

    //Display names for pant columns

    public class Pantmetadata
    {
        [DisplayName("Pants")]
        public string PantName { get; set; }

        [DisplayName("Photo")]
        public string PantPhoto { get; set; }

        [DisplayName("Color")]
        public string PantColor { get; set; }

        [DisplayName("Type")]
        public string PantType { get; set; }

        [DisplayName("Season")]
        public string PantSeason { get; set; }

        [DisplayName("Occasion")]
        public string PantOccasion { get; set; }

        [DisplayName("Description")]
        public string PantNotes { get; set; }

    }
}
