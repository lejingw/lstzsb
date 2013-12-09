
package com.lejingw.apps.ws1.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "getPagerResponse", namespace = "http://ws1.apps.lejingw.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getPagerResponse", namespace = "http://ws1.apps.lejingw.com/")
public class GetPagerResponse {

    @XmlElement(name = "return", namespace = "")
    private com.totyu.common.Pager _return;

    /**
     * 
     * @return
     *     returns Pager
     */
    public com.totyu.common.Pager getReturn() {
        return this._return;
    }

    /**
     * 
     * @param _return
     *     the value for the _return property
     */
    public void setReturn(com.totyu.common.Pager _return) {
        this._return = _return;
    }

}
