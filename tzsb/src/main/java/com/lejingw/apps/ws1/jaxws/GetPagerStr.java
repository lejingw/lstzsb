
package com.lejingw.apps.ws1.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "getPagerStr", namespace = "http://ws1.apps.lejingw.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getPagerStr", namespace = "http://ws1.apps.lejingw.com/")
public class GetPagerStr {

    @XmlElement(name = "arg0", namespace = "")
    private com.totyu.common.Pager arg0;

    /**
     * 
     * @return
     *     returns Pager
     */
    public com.totyu.common.Pager getArg0() {
        return this.arg0;
    }

    /**
     * 
     * @param arg0
     *     the value for the arg0 property
     */
    public void setArg0(com.totyu.common.Pager arg0) {
        this.arg0 = arg0;
    }

}
