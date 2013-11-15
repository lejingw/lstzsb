
package com.lejingw.apps.ws3;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for getPagerStr complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="getPagerStr">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="pager" type="{http://ws3.apps.lejingw.com}pager"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getPagerStr", propOrder = {
    "pager"
})
public class GetPagerStr {

    @XmlElement(required = true)
    protected Pager pager;

    /**
     * Gets the value of the pager property.
     * 
     * @return
     *     possible object is
     *     {@link Pager }
     *     
     */
    public Pager getPager() {
        return pager;
    }

    /**
     * Sets the value of the pager property.
     * 
     * @param value
     *     allowed object is
     *     {@link Pager }
     *     
     */
    public void setPager(Pager value) {
        this.pager = value;
    }

}
