using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace WardrobeMVC
{
    [MetadataType(typeof(Outfitmetadata))]
    public partial class Outfit

    {
    }

    //Display names for outfit columns

    public class Outfitmetadata
    {
        [DisplayName("Outfit")]
        public string OutfitName { get; set; }

        [DisplayName("Description")]
        public string OutfitNotes { get; set; }

    }
}
