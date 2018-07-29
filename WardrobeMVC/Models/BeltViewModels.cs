using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace WardrobeMVC
{
    [MetadataType(typeof(Beltmetadata))]
    public partial class Belt

    {
    }

    //Display names for belt columns

    public class Beltmetadata
    {
        [DisplayName("Belt")]
        public string BeltName { get; set; }

        [DisplayName("Photo")]
        public string BeltImage { get; set; }

        [DisplayName("Color")]
        public string BeltColor { get; set; }

        [DisplayName("Type")]
        public string BeltType { get; set; }

        [DisplayName("Season")]
        public string BeltSeason { get; set; }

        [DisplayName("Occasion")]
        public string BeltOccasion { get; set; }

        [DisplayName("Description")]
        public string BeltNotes { get; set; }

    }
}
