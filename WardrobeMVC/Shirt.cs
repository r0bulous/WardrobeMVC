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
    
    public partial class Shirt
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shirt()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int ShirtId { get; set; }
        public string ShirtName { get; set; }
        public string ShirtImage { get; set; }
        public Nullable<int> ShirtTypeId { get; set; }
        public Nullable<int> ShirtColorId { get; set; }
        public Nullable<int> ShirtOccasionId { get; set; }
        public Nullable<int> ShirtSeasonId { get; set; }
        public string ShirtNotes { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
        public virtual ShirtColor ShirtColor { get; set; }
        public virtual ShirtOccasion ShirtOccasion { get; set; }
        public virtual ShirtSeason ShirtSeason { get; set; }
        public virtual ShirtType ShirtType { get; set; }
    }
}
