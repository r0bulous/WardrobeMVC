using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace WardrobeMVC
{
    [MetadataType(typeof(Shoemetadata))]
    public partial class Sho

    {
    }

    //Display names for Shoe columns

    public class Shoemetadata
    {
        [DisplayName("Shoe")]
        public string ShoeName { get; set; }

        [DisplayName("Photo")]
        public string ShoePhoto { get; set; }

        [DisplayName("Color")]
        public string ShoeColor { get; set; }

        [DisplayName("Type")]
        public string ShoeType { get; set; }

        [DisplayName("Season")]
        public string ShoeSeason { get; set; }

        [DisplayName("Occasion")]
        public string ShoeOccasion { get; set; }

        [DisplayName("Description")]
        public string ShoeNotes { get; set; }

    }
}
