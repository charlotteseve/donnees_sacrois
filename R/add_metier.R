add_metier <- function(data_clean){

  # Studied metiers
  vect_met <- c("GNC", "GNS", "GTN", "GTR", "LLS", "LN", "OTB", "OTT")
  
  # Creating met from METIER_DCF column, keeping only the 3 first letters
  data_clean$met <- substr(data_clean$METIER_DCF_5_COD, start = 1, stop = 3)
  
  # Joining data_clean with vect_met
  for(i in 1:nrow(data_clean)){
    if(is.na(data_clean$met[i])){
      data_clean$met[i] <- "NA"
    }
    else{}
    }

  # On garde les métiers d'intérêt dans MET
  data_clean$met <- ifelse(data_clean$met %in% vect_met, data_clean$met, "autre")
  # si MET est dans Vect, alors on met MET --> sinon on met "Autre"
  
  data_clean_metier <- data_clean
 
  return(data_clean_metier)
   
}
