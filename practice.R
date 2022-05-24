library(dplyr)

person_1 <- filter(BLCA_Mut, BLCA_Mut$sample_id == "TCGA-2F-A9KO")

k = 0

For g in GeneSymbol: if Variant_Classification = Nonsense, + 1 to k
for P in person: for G in gene: if mutation type = nonsense +1 to list that starts at 0 

persion_1 
unique(person_1$Variant_Classification)

df <- summarise(person_1, sample_id, Variant_Classification == "Silent", 
                Variant_Classification == "Nonsense_Mutation", 
          Variant_Classification == "Missense_Mutation", 
          Variant_Classification == "Splice_Region", 
          Variant_Classification == "Frame_Shift_Del",
          Variant_Classification == "Splice_Site",
          Variant_Classification == "Frame_Shift_Ins",
          Variant_Classification == "Nonstop_Mutation",
          Variant_Classification == "RNA",
          Variant_Classification == "In_Frame_Del",
          Variant_Classification == "NA", gender, race, ethnicity, years_smoked)
names(df) <- c("sample_id", "Silent", "Nonsense_Mutation", "Missense_Mutation", "Splice_Region",
               "Frame_Shift_Del", "Splice_Site", "Frame_Shift_Ins", "Nonstop_Mutation",
               "RNA", "In_Frame_Del", "NA", "gender", "race", "ethnicity", "years_smoked")

df$Silent <- as.integer(as.logical(df$Silent))
df$Nonsense_Mutation <- as.integer(as.logical(df$Nonsense_Mutation))
df$Missense_Mutation <- as.integer(as.logical(df$Missense_Mutation))
df$Splice_Region <- as.integer(as.logical(df$Splice_Region))
df$Frame_Shift_Del <- as.integer(as.logical(df$Frame_Shift_Del))
df$Splice_Site <- as.integer(as.logical(df$Splice_Site))
df$Frame_Shift_Ins <- as.integer(as.logical(df$Frame_Shift_Ins))
df$Nonstop_Mutation <- as.integer(as.logical(df$Nonstop_Mutation))
df$RNA <- as.integer(as.logical(df$RNA))
df$In_Frame_Del <- as.integer(as.logical(df$In_Frame_Del))

df$unknown <- df$'NA'

df$unknown <- as.integer(as.logical(df$unknown))

unique(person_1$Variant_Classification)

df <- df[, c(1,2,3,4,5,6,7,8,9,10,11,17,13,14,15,16)]

aggregate(.~sample_id,data=df,FUN=sum)






