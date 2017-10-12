/**
 * Copyright MaDgIK Group 2010 - 2015.
 */
package madgik.analyzer.decomposer.query;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hashing;

/**
 * @author heraldkllapi
 */
public class Table {

    private Boolean hasDBIdRemoved;
    private String name;
    private String alias;
    private HashCode hash=null;
    private boolean dtr1FromKeys;
    private static final Logger log = LoggerFactory.getLogger(Table.class);

    public Table() {
        hasDBIdRemoved = false;
        this.name = "";
        this.alias = "";
        dtr1FromKeys=false;
    }

    public Table(String n, String a) {
        hasDBIdRemoved = false;
        this.name = n;
        this.alias = a;
        dtr1FromKeys=false;
    }



    public String getlocalName() {
      /*  if(!this.hasDBIdRemoved){
        for (String id : DBInfoReaderDB.dbInfo.getAllDBIDs()) {
            if (getName().startsWith(id + "_")) {
                DB db=DBInfoReaderDB.dbInfo.getDB(id);
                return db.getSchema()+"."+getName().substring(id.length() + 1);
            }
        }}
*/
        return getName();

    }

 

    @Override public String toString() {
        return this.getlocalName() + " " + getAlias();
    }

    public String dotPrint() {
        return this.getlocalName();
    }

 

    @Override public boolean equals(Object other) {
        if (other == null) {
            return false;
        }
        if (!(other instanceof Table)) {
            return false;
        }
        Table otherT = (Table) other;
        if (this.getAlias() == null) {
            return this.getName().equals(otherT.getName());
        }
        return (this.getName().equals(otherT.getName()) && this.getAlias()
            .equals(otherT.getAlias()));
    }

    @Override public int hashCode() {
        int hash = 7;
        hash = 89 * hash + Objects.hashCode(this.getAlias());
        hash = 89 * hash + Objects.hashCode(this.getName());
        return hash;
    }
    
    public int getHashId() {
        int hash = 31;
        String aliasUp=alias.toUpperCase();
        String nameUp=name.toUpperCase();
        
        int last=aliasUp.charAt(aliasUp.length()-1)+19;
        last*=last;
        hash = 31*hash+last;
        hash = 89 * hash + aliasUp.hashCode();
        hash = 89 * hash + nameUp.hashCode();
        hash = 89 * hash +(new StringBuilder(aliasUp).reverse().toString()).hashCode();
        hash = 89 * hash +(new StringBuilder(nameUp).reverse().toString()).hashCode();
        return hash;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
        hash=null;
    }

    /**
     * @return the alias
     */
    public String getAlias() {
        return alias;
    }

    /**
     * @param alias the alias to set
     */
    public void setAlias(String alias) {
        this.alias = alias;
        hash=null;
    }

    public boolean hasDBIdRemoved() {
        return this.hasDBIdRemoved;
    }

    public void setDBIdRemoved() {
        this.hasDBIdRemoved = true;
    }

	public HashCode getHashID() {
		if(hash==null){
		List<HashCode> codes=new ArrayList<HashCode>();
		codes.add(Hashing.sha1().hashBytes(alias.toUpperCase().getBytes()));
		codes.add(Hashing.sha1().hashBytes(name.toUpperCase().getBytes()));
		hash= Hashing.combineOrdered(codes);
		}
		return hash;
		
	}

	public boolean hasDtr1FromKeys() {
		return dtr1FromKeys;
	}

	public void setDtr1FromKeys(boolean dtr1FromKeys) {
		this.dtr1FromKeys = dtr1FromKeys;
	}
	
	
}
