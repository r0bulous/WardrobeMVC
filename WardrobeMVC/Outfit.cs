//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeMVC
{
    using System;
    using System.Collections.Generic;
    
    public partial class Outfit
    {
        public int OutfitId { get; set; }
        public string OutfitName { get; set; }
        public Nullable<int> ShirtId { get; set; }
        public Nullable<int> PantId { get; set; }
        public Nullable<int> ShoeId { get; set; }
        public Nullable<int> BeltId { get; set; }
        public string OutfitNotes { get; set; }
    
        public virtual Belt Belt { get; set; }
        public virtual Pant Pant { get; set; }
        public virtual Shirt Shirt { get; set; }
        public virtual Sho Sho { get; set; }
    }
}
