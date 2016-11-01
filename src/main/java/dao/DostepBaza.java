package dao;

import java.util.*;

import model.Badanie;

public class DostepBaza {

	private ArrayList<Badanie> badania = new ArrayList<Badanie>();
	
	public void add(Badanie Badanie) {
		
		try {
			badania.add(Badanie);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public List<Badanie> pobierzWszystkie() {	
		return badania;
	}
	
	
	public void usunBadanie(String typ) {
		
		Iterator<Badanie> b = badania.iterator();
	
        try {
        	while (b.hasNext()){
        	    if (b.next().getTyp().equals(typ)) {
        	        b.remove();
        	        break;
        	    }
        	}
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
	
	public Badanie poTypieBadania(String typ) {
			
		Badanie Badanie = null;
		
		try {
			for(Badanie wsk : badania) {
				if(wsk.getTyp().equals(typ)) {
					Badanie = wsk;	
					break;
				}
			}
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return Badanie;	
	}

}
