using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace WardrobeMVC
{
    [MetadataType(typeof(Shirtmetadata))]
    public partial class Shirt

    {
    }

    //Display names for shirt columns

    public class Shirtmetadata
    {
        [DisplayName("Shirt")]
        public string ShirtName { get; set; }

        [DisplayName("Photo")]
        public string ShirtImage { get; set; }

        [DisplayName("Color")]
        public string ShirtColor { get; set; }

        [DisplayName("Type")]
        public string ShirtType { get; set; }

        [DisplayName("Season")]
        public string ShirtSeason { get; set; }

        [DisplayName("Occasion")]
        public string ShirtOccasion { get; set; }

        [DisplayName("Description")]
        public string ShirtNotes { get; set; }

    }
}
